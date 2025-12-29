# Set the Vivado project name and path
set project_name "xmss_fips_205_UART_vivado_project"
set project_dir "./$project_name"  
set src_dir "./src"   

# Create a new Vivado project
create_project $project_name $project_dir -force

set_property board_part digilentinc.com:arty-a7-100:part0:1.1 [current_project]

# Add all HDL files from the 'src' directory
set hdl_files [glob -nocomplain $src_dir/*.vhd $src_dir/*.v  $src_dir/*.edn]

# Add each HDL file to the project
foreach file $hdl_files {
    add_files $file
}

#add leaf bram
create_ip -name blk_mem_gen -vendor xilinx.com -library ip -version 8.4 -module_name my_bram_xmss_node_2
set_property -dict [list \
  CONFIG.Operating_Mode_A {READ_FIRST} \
  CONFIG.Write_Depth_A {256} \
  CONFIG.Write_Width_A {256} \
] [get_ips my_bram_xmss_node_2]
generate_target all [get_files  **/XMSS_FIPS_205_UART/xmss_fips_205_UART_vivado_project/xmss_fips_205_UART_vivado_project.srcs/sources_1/ip/my_bram_xmss_node_2/my_bram_xmss_node_2.xci]
catch { config_ip_cache -export [get_ips -all my_bram_xmss_node_2] }
export_ip_user_files -of_objects [get_files **/XMSS_FIPS_205_UART/xmss_fips_205_UART_vivado_project/xmss_fips_205_UART_vivado_project.srcs/sources_1/ip/my_bram_xmss_node_2/my_bram_xmss_node_2.xci] -no_script -sync -force -quiet
create_ip_run [get_files -of_objects [get_fileset sources_1] **/XMSS_FIPS_205_UART/xmss_fips_205_UART_vivado_project/xmss_fips_205_UART_vivado_project.srcs/sources_1/ip/my_bram_xmss_node_2/my_bram_xmss_node_2.xci]
launch_runs my_bram_xmss_node_2_synth_1 -jobs 8

#add signature fifo
create_ip -name fifo_generator -vendor xilinx.com -library ip -version 13.2 -module_name sig_fifo
set_property -dict [list \
  CONFIG.Input_Data_Width {256} \
  CONFIG.Input_Depth {128} \
] [get_ips sig_fifo]
generate_target {instantiation_template} [get_files **/XMSS_FIPS_205_UART/xmss_fips_205_UART_vivado_project/xmss_fips_205_UART_vivado_project.srcs/sources_1/ip/sig_fifo/sig_fifo.xci]
generate_target all [get_files  **/XMSS_FIPS_205_UART/xmss_fips_205_UART_vivado_project/xmss_fips_205_UART_vivado_project.srcs/sources_1/ip/sig_fifo/sig_fifo.xci]
catch { config_ip_cache -export [get_ips -all sig_fifo] }
export_ip_user_files -of_objects [get_files **/XMSS_FIPS_205_UART/xmss_fips_205_UART_vivado_project/xmss_fips_205_UART_vivado_project.srcs/sources_1/ip/sig_fifo/sig_fifo.xci] -no_script -sync -force -quiet
create_ip_run [get_files -of_objects [get_fileset sources_1] **/XMSS_FIPS_205_UART/xmss_fips_205_UART_vivado_project/xmss_fips_205_UART_vivado_project.srcs/sources_1/ip/sig_fifo/sig_fifo.xci]
launch_runs sig_fifo_synth_1 -jobs 8

#add clock wizard
create_ip -name clk_wiz -vendor xilinx.com -library ip -version 6.0 -module_name clk_wiz_0
set_property -dict [list \
  CONFIG.CLKOUT1_JITTER {151.636} \
  CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {50} \
  CONFIG.MMCM_CLKOUT0_DIVIDE_F {20.000} \
  CONFIG.USE_RESET {false} \
] [get_ips clk_wiz_0]
generate_target {instantiation_template} [get_files **/XMSS_FIPS_205_UART/xmss_fips_205_UART_vivado_project/xmss_fips_205_UART_vivado_project.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xci]
generate_target all [get_files  **/XMSS_FIPS_205_UART/xmss_fips_205_UART_vivado_project/xmss_fips_205_UART_vivado_project.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xci]
catch { config_ip_cache -export [get_ips -all clk_wiz_0] }
export_ip_user_files -of_objects [get_files **/XMSS_FIPS_205_UART/xmss_fips_205_UART_vivado_project/xmss_fips_205_UART_vivado_project.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xci] -no_script -sync -force -quiet
create_ip_run [get_files -of_objects [get_fileset sources_1] **/XMSS_FIPS_205_UART/xmss_fips_205_UART_vivado_project/xmss_fips_205_UART_vivado_project.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xci]
launch_runs clk_wiz_0_synth_1 -jobs 8



# Add HDL files to the project for synthesis
update_compile_order -fileset sources_1

move_files -fileset sim_1 [get_files **/XMSS_FIPS_205_UART/src/tb_control_system.vhd]

add_files -fileset constrs_1 -norecurse ../XMSS_FIPS_205_UART/xdc/Arty-A7-100-Master.xdc
import_files -fileset constrs_1 ../XMSS_FIPS_205_UART/xdc/Arty-A7-100-Master.xdc

# Open the Vivado GUI
start_gui
