--VHDL instantiation template

component multiplier is
    port (mult_m_DataA: in std_logic_vector(9 downto 0);
        mult_m_DataB: in std_logic_vector(3 downto 0);
        mult_m_Result: out std_logic_vector(13 downto 0);
        multiplier_12_2_m_DataA: in std_logic_vector(1 downto 0);
        multiplier_12_2_m_DataB: in std_logic_vector(11 downto 0);
        multiplier_12_2_m_Result: out std_logic_vector(13 downto 0);
        mult_m_Aclr: in std_logic;
        mult_m_ClkEn: in std_logic;
        mult_m_Clock: in std_logic;
        multiplier_12_2_m_Aclr: in std_logic;
        multiplier_12_2_m_ClkEn: in std_logic;
        multiplier_12_2_m_Clock: in std_logic
    );
    
end component multiplier; -- sbp_module=true 
_inst: multiplier port map (mult_m_DataA => __,mult_m_DataB => __,mult_m_Result => __,
            mult_m_Aclr => __,mult_m_ClkEn => __,mult_m_Clock => __,multiplier_12_2_m_DataA => __,
            multiplier_12_2_m_DataB => __,multiplier_12_2_m_Result => __,multiplier_12_2_m_Aclr => __,
            multiplier_12_2_m_ClkEn => __,multiplier_12_2_m_Clock => __);
