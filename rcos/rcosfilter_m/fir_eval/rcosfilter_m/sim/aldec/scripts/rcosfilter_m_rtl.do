cd "C:/Users/SNA/Documents/FPGA_code/lattice_sdr_code/rcos/rcosfilter_m/fir_eval/rcosfilter_m/sim/aldec/rtl"
workspace create fir_test
design create fir_test .
design open fir_test
cd "C:/Users/SNA/Documents/FPGA_code/lattice_sdr_code/rcos/rcosfilter_m/fir_eval/rcosfilter_m/sim/aldec/rtl"
#-- Set ispLEVER SW installation directory -- 
#-- Modify this path for localization of "isp_lever_dir" 
set isplever_dir C:/lscc/diamond/3.14 
alog  -y $isplever_dir/cae_library/simulation/verilog/ecp5u +libext+.v \
      +incdir+../../../src/params \
     "../../../src/rtl/top/ecp5um5g/rcosfilter_m_top.v" \
     "../../../../../rcosfilter_m_beh.v" \
     "../../../../testbench/rcosfilter_m_tb.v" \
     -y $isplever_dir/cae_library/simulation/verilog/pmi +libext+.v
#----- Start evaluation test -- 
vsim -o5 +access +r -t 1ps fir_test.rcosfilter_m_tb -lib fir_test -L pmi_work -L ovi_ecp5u
#----- View the simulation results 
add wave sim:/rcosfilter_m_tb/rstn 
add wave sim:/rcosfilter_m_tb/clk 
add wave sim:/rcosfilter_m_tb/inpvalid 
add wave -radix hexadecimal sim:/rcosfilter_m_tb/din 
add wave sim:/rcosfilter_m_tb/rfi 
add wave sim:/rcosfilter_m_tb/outvalid 
add wave -radix hexadecimal sim:/rcosfilter_m_tb/dout 
run -all 

