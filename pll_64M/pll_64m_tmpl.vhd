--VHDL instantiation template

component pll_64m is
    port (pll_64_CLKI: in std_logic;
        pll_64_CLKOP: out std_logic;
        pll_64_LOCK: out std_logic;
        pll_64_RST: in std_logic;
        pll_64_new_CLKI: in std_logic;
        pll_64_new_CLKOP: out std_logic;
        pll_64_new_LOCK: out std_logic;
        pll_64_new_RST: in std_logic;
        pll_try_CLKI: in std_logic;
        pll_try_CLKOP: out std_logic
    );
    
end component pll_64m; -- sbp_module=true 
_inst: pll_64m port map (pll_try_CLKI => __,pll_try_CLKOP => __,pll_64_new_CLKI => __,
            pll_64_new_CLKOP => __,pll_64_new_LOCK => __,pll_64_new_RST => __,
            pll_64_CLKI => __,pll_64_CLKOP => __,pll_64_LOCK => __,pll_64_RST => __);
