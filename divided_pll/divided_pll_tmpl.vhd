--VHDL instantiation template

component divided_pll is
    port (pll_24m_CLKI: in std_logic;
        pll_24m_CLKOP: out std_logic
    );
    
end component divided_pll; -- sbp_module=true 
_inst: divided_pll port map (pll_24m_CLKI => __,pll_24m_CLKOP => __);
