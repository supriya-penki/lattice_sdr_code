--VHDL instantiation template

component divided_pll_2 is
    port (pll_24_64m_CLKI: in std_logic;
        pll_24_64m_CLKOP: out std_logic;
        pll_24_64m_LOCK: out std_logic;
        pll_24_64m_RST: in std_logic
    );
    
end component divided_pll_2; -- sbp_module=true 
_inst: divided_pll_2 port map (pll_24_64m_CLKI => __,pll_24_64m_CLKOP => __,
            pll_24_64m_LOCK => __,pll_24_64m_RST => __);
