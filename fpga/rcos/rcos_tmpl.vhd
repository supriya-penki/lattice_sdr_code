--VHDL instantiation template

component rcos is
    port (rcosfilter_m_din: in std_logic_vector(3 downto 0);
        rcosfilter_m_dout: out std_logic_vector(13 downto 0);
        rcosfilter_m_clk: in std_logic;
        rcosfilter_m_inpvalid: in std_logic;
        rcosfilter_m_outvalid: out std_logic;
        rcosfilter_m_rfi: out std_logic;
        rcosfilter_m_rstn: in std_logic
    );
    
end component rcos; -- sbp_module=true 
_inst: rcos port map (rcosfilter_m_din => __,rcosfilter_m_dout => __,rcosfilter_m_clk => __,
           rcosfilter_m_inpvalid => __,rcosfilter_m_outvalid => __,rcosfilter_m_rfi => __,
           rcosfilter_m_rstn => __);
