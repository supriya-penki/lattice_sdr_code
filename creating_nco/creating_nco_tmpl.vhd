--VHDL instantiation template

component creating_nco is
    port (SinCos_Module_Cosine: out std_logic_vector(11 downto 0);
        SinCos_Module_Sine: out std_logic_vector(11 downto 0);
        SinCos_Module_Theta: in std_logic_vector(9 downto 0);
        sincos_m_Cosine: out std_logic_vector(7 downto 0);
        sincos_m_Sine: out std_logic_vector(7 downto 0);
        sincos_m_Theta: in std_logic_vector(9 downto 0);
        SinCos_Module_ClkEn: in std_logic;
        SinCos_Module_Clock: in std_logic;
        SinCos_Module_Reset: in std_logic;
        sincos_m_ClkEn: in std_logic;
        sincos_m_Clock: in std_logic;
        sincos_m_Reset: in std_logic
    );
    
end component creating_nco; -- sbp_module=true 
_inst: creating_nco port map (SinCos_Module_Cosine => __,SinCos_Module_Sine => __,
            SinCos_Module_Theta => __,SinCos_Module_ClkEn => __,SinCos_Module_Clock => __,
            SinCos_Module_Reset => __,sincos_m_Cosine => __,sincos_m_Sine => __,
            sincos_m_Theta => __,sincos_m_ClkEn => __,sincos_m_Clock => __,
            sincos_m_Reset => __);
