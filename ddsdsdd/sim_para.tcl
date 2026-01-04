lappend auto_path "C:/lscc/diamond/3.14/data/script"
package require simulation_generation
set ::bali::simulation::Para(DEVICEFAMILYNAME) {ECP5UM5G}
set ::bali::simulation::Para(PROJECT) {ddsdsdd}
set ::bali::simulation::Para(PROJECTPATH) {C:/Users/SNA/Documents/FPGA_code/lattice_sdr_code}
set ::bali::simulation::Para(FILELIST) {"C:/Users/SNA/Documents/FPGA_code/lattice_sdr_code/src/cosModule.v" "C:/Users/SNA/Documents/FPGA_code/lattice_sdr_code/src/sinModule.v" "C:/Users/SNA/Documents/FPGA_code/lattice_sdr_code/src/FSKModulator.v" "C:/Users/SNA/Documents/FPGA_code/lattice_sdr_code/fsktb.v" "C:/Users/SNA/Documents/FPGA_code/lattice_sdr_code/src/DEDFF.v" "C:/Users/SNA/Documents/FPGA_code/lattice_sdr_code/src/IQSerializer.v" "C:/Users/SNA/Documents/FPGA_code/lattice_sdr_code/src/ble_packet.v" "C:/Users/SNA/Documents/FPGA_code/lattice_sdr_code/src/packetGenerator.v" "C:/Users/SNA/Documents/FPGA_code/lattice_sdr_code/src/packetCounter.v" "C:/Users/SNA/Documents/FPGA_code/lattice_sdr_code/src/clockDivider.v" "C:/Users/SNA/Documents/FPGA_code/lattice_sdr_code/divided_pll_2/pll_24_64m/pll_24_64m.v" "C:/Users/SNA/Documents/FPGA_code/lattice_sdr_code/divided_pll/pll_24m/pll_24m.v" "C:/Users/SNA/Documents/FPGA_code/lattice_sdr_code/src/top_module.v" "C:/Users/SNA/Documents/FPGA_code/lattice_sdr_code/src/local_oscillator.v" "C:/Users/SNA/Documents/FPGA_code/lattice_sdr_code/pll_64m/pll_try/pll_try.v" "C:/Users/SNA/Documents/FPGA_code/lattice_sdr_code/pll_64m/pll_64_new/pll_64_new.v" "C:/Users/SNA/Documents/FPGA_code/lattice_sdr_code/pll_64m/pll_64/pll_64.v" "C:/Users/SNA/Documents/FPGA_code/lattice_sdr_code/pll_64m/pll_64m.v" "C:/Users/SNA/Documents/FPGA_code/lattice_sdr_code/divided_pll/divided_pll.v" "C:/Users/SNA/Documents/FPGA_code/lattice_sdr_code/divided_pll_2/divided_pll_2.v" "C:/Users/SNA/Documents/FPGA_code/lattice_sdr_code/src/bleDefines.v" "C:/Users/SNA/Documents/FPGA_code/lattice_sdr_code/src/radioDefines.v" }
set ::bali::simulation::Para(GLBINCLIST) {}
set ::bali::simulation::Para(INCLIST) {"none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none"}
set ::bali::simulation::Para(WORKLIBLIST) {"work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" }
set ::bali::simulation::Para(COMPLIST) {"VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" }
set ::bali::simulation::Para(LANGSTDLIST) {"Verilog 2001" "Verilog 2001" "Verilog 2001" "Verilog 2001" "Verilog 2001" "Verilog 2001" "Verilog 2001" "Verilog 2001" "Verilog 2001" "Verilog 2001" "Verilog 2001" "Verilog 2001" "Verilog 2001" "Verilog 2001" "Verilog 2001" "Verilog 2001" "Verilog 2001" "Verilog 2001" "Verilog 2001" "Verilog 2001" "Verilog 2001" "Verilog 2001" }
set ::bali::simulation::Para(SIMLIBLIST) {pmi_work ovi_ecp5u}
set ::bali::simulation::Para(MACROLIST) {}
set ::bali::simulation::Para(SIMULATIONTOPMODULE) {FSKModulator_tb}
set ::bali::simulation::Para(SIMULATIONINSTANCE) {}
set ::bali::simulation::Para(LANGUAGE) {VERILOG}
set ::bali::simulation::Para(SDFPATH)  {}
set ::bali::simulation::Para(INSTALLATIONPATH) {C:/lscc/diamond/3.14}
set ::bali::simulation::Para(ADDTOPLEVELSIGNALSTOWAVEFORM)  {1}
set ::bali::simulation::Para(RUNSIMULATION)  {1}
set ::bali::simulation::Para(SIMULATION_RESOLUTION)  {default}
set ::bali::simulation::Para(HDLPARAMETERS) {}
set ::bali::simulation::Para(POJO2LIBREFRESH)    {}
set ::bali::simulation::Para(POJO2MODELSIMLIB)   {}
set ::bali::simulation::Para(OPTIMIZEARGS)  {+acc}
set ::bali::simulation::Para(OPTIMIZATION_DEBUG)  {1}
::bali::simulation::QuestaSim_Run
