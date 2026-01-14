% ============================================================
% wave1_generic_QPSK_SPS8_noRRC.m
%   Comm Toolbox required.
%
% Generic pipeline (not tuned to any one capture):
%   1) Read IQ wav -> complex baseband
%   2) Pick a "busy" chunk automatically (max average power window)
%   3) PSD -> pick occupied band around peak (peak-relative)
%   4) Shift band to DC + low-pass filter
%   5) Plot PSD of y^4 (zoom around DC)
%   6) CFO estimate using 4th-power phase increment (robust)
%   7) FIXED SPS = 8 (known from your system)
%   8) Rectangular matched filter (no RRC assumption)
%   9) Timing recovery (Gardner) + QPSK carrier sync (Costas)
%  10) Plot constellation + histogram(angle(z^4))
% ============================================================

clear; clc;

%% ---- USER SETTINGS ----
filename    = "C:\Users\ROG Zephyrus\Downloads\HDSDR_20260111_142059Z_910000kHz_RF.wav";
sps         = 8;          % known: 8 samples per symbol
maxSeconds  = 0.25;       % keep it short to avoid SymbolSynchronizer internal truncation
powerWin_ms = 10;         % window for "busy chunk" detection (generic)

% PSD/band-pick
Nw_max      = 65536;      % Welch FFT length cap
drop_list   = [10 12 15 18 20 25]; % dB down from peak
minBW_frac  = 0.002;      % minimum BW as fraction of Fs (generic)
maxBW_frac  = 0.45;       % maximum BW as fraction of Fs (generic)

% LPF
lpfTaps     = 401;

% Symbol synchronizer (generic values)
timingNLBW  = 0.01;       % try 0.005..0.02 if needed
carrierNLBW = 0.01;

% Limit samples fed into SymbolSynchronizer to reduce warnings
MAX_IN      = 400000;     % generic: avoids huge outputs; adjust if needed
%% ------------------------

%% 1) Read IQ
[x, Fs] = audioread(filename);

if size(x,2)==2
    rx = x(:,1) + 1j*x(:,2);
else
    rx = hilbert(x);
end
rx = rx(:);
rx = rx - mean(rx);

fprintf("Fs=%.0f Hz, total samples=%d (%.3f s)\n", Fs, length(rx), length(rx)/Fs);

%% 2) Pick a "busy" chunk (generic, no threshold guessing)
Nchunk = min(length(rx), round(maxSeconds*Fs));
if length(rx) > Nchunk
    win = max(1, round((powerWin_ms/1000)*Fs));
    p   = movmean(abs(rx).^2, win);
    [~, imax] = max(p);

    i1 = max(1, imax - floor(Nchunk/2));
    i2 = min(length(rx), i1 + Nchunk - 1);
    rx = rx(i1:i2);
else
    rx = rx(1:Nchunk);
end

fprintf("Using chunk: N=%d samples (%.3f s)\n", length(rx), length(rx)/Fs);

%% 3) PSD + peak-relative band pick
Nw = min(Nw_max, 2^floor(log2(length(rx)/4)));
Nw = max(Nw, 4096);

[pxx,f] = pwelch(rx, hann(Nw), round(0.5*Nw), Nw, Fs, 'centered');
pxx_db   = 10*log10(pxx + 1e-30);
pxx_db_s = movmean(pxx_db, 31);

[pk_db, pk_i] = max(pxx_db_s);

figure; plot(f, pxx_db); grid on;
xlabel('Hz'); ylabel('PSD (dB)'); title('Centered PSD of recording');

minBW = max(5e3, minBW_frac*Fs);
maxBW = maxBW_frac*Fs;

bestFound = false;
for drop = drop_list
    thr = pk_db - drop;
    mask = (pxx_db_s > thr);

    L = pk_i; R = pk_i;
    while L>1 && mask(L-1), L=L-1; end
    while R<numel(mask) && mask(R+1), R=R+1; end

    bw_try = f(R) - f(L);
    if bw_try >= minBW && bw_try <= maxBW
        bestFound = true;
        break;
    end
end

if ~bestFound
    error("Could not find a reasonable occupied band around PSD peak.");
end

% power-weighted center frequency
f0 = sum(f(L:R).*pxx(L:R)) / sum(pxx(L:R));
bw = f(R) - f(L);

fprintf("Band pick: drop=%d dB, BW≈%.0f Hz, f0≈%.1f Hz\n", drop, bw, f0);

%% 4) Shift to DC + LPF
n = (0:length(rx)-1).';
y = rx .* exp(-1j*2*pi*f0*n/Fs);

fc = min(0.45*Fs, max(5e3, 1.1*(bw/2)));  % generic "a bit wider than half-band"
fprintf("LPF cutoff fc≈%.0f Hz\n", fc);

b = fir1(lpfTaps-1, fc/(Fs/2));
y = filter(b, 1, y);
y = y(lpfTaps:end);

y = y - mean(y);
y = y / (rms(abs(y)) + 1e-12);

Ns = min(150000, length(y));
figure; plot(real(y(1:Ns)), imag(y(1:Ns)), '.', 'MarkerSize', 2);
axis equal; grid on; title('Isolated band (pre-sync)'); xlabel('I'); ylabel('Q');

%% 5) PSD of y^4 (zoom around DC)
y4 = y.^4;

Nw4 = min(262144, 2^floor(log2(length(y4)/4)));
Nw4 = max(Nw4, 4096);

[Py4, Fy4] = pwelch(y4, hann(Nw4), round(0.5*Nw4), Nw4, Fs, 'centered');
Py4_db = 10*log10(Py4 + 1e-30);

zoomHz = min(200e3, 0.1*Fs);  % generic zoom
figure;
maskz = abs(Fy4) <= zoomHz;
plot(Fy4(maskz), Py4_db(maskz)); grid on;
xlabel('Hz'); ylabel('PSD (dB)');
title(sprintf('PSD of y^4 (zoom ±%.0f kHz)', zoomHz/1e3));

%% 6) CFO estimate (robust): 4th-power phase increment circular mean
dphi = angle(conj(y4(1:end-1)) .* y4(2:end));
mu   = angle(mean(exp(1j*dphi)));     % circular mean
cfo  = (Fs/(2*pi)) * mu / 4;

% sanity clamp to avoid insane values on junk data (generic protection)
cfo = max(min(cfo, Fs/8), -Fs/8);

fprintf("CFO est (phase-inc) ≈ %.2f Hz\n", cfo);

n = (0:length(y)-1).';
y = y .* exp(-1j*2*pi*cfo*n/Fs);

%% 7) Rectangular matched filter (no RRC assumption)
hrect = ones(sps,1);                 % integrate-like MF
ymf   = filter(hrect, 1, y);

% remove transient (simple, generic)
ymf = ymf(sps:end);

ymf = ymf - mean(ymf);
ymf = ymf / (rms(abs(ymf)) + 1e-12);

% limit length to reduce SymbolSynchronizer warnings (tool limitation)
if length(ymf) > MAX_IN
    ymf = ymf(1:MAX_IN);
end

%% 8) Timing sync (Gardner) + Carrier sync (QPSK)
symSync = comm.SymbolSynchronizer( ...
    'TimingErrorDetector','Gardner (non-data-aided)', ...
    'SamplesPerSymbol', sps, ...
    'DampingFactor', 1.0, ...
    'NormalizedLoopBandwidth', timingNLBW);

ys = symSync(ymf);

carSync = comm.CarrierSynchronizer( ...
    'Modulation','QPSK', ...
    'SamplesPerSymbol', 1, ...
    'DampingFactor', 1.0, ...
    'NormalizedLoopBandwidth', carrierNLBW);

yc = carSync(ys);
yc = yc / (rms(abs(yc)) + 1e-12);

fprintf("Done: QPSK only, sps=%d\n", sps);

%% 9) Constellation
Ns = min(80000, length(yc));
figure; plot(real(yc(1:Ns)), imag(yc(1:Ns)), '.', 'MarkerSize', 3);
grid on; axis equal;
title(sprintf('After timing+carrier sync (QPSK, sps=%d)', sps));
xlabel('I'); ylabel('Q');

%% 10) Histogram of angle(z^4)
z = yc;
z = z(1:min(length(z),80000));

a4 = angle(z.^4);
a4 = mod(a4 + pi, 2*pi) - pi;

figure; histogram(a4, 100); grid on;
xlabel('angle(z^4)'); title('Histogram of angle(z^4)');
