
########################### Define Top Module ############################
                                                   
set top_module SYS_TOP

##################### Define Working Library Directory ######################
                                                   
define_design_lib work -path ./work

############################# Formality Setup File ##########################
                                                   
set_svf $top_module.svf

################## Design Compiler Library Files #setup ######################

lappend search_path /home/ICer/project/std
lappend search_path /home/ICer/project/rtl

set SSLIB "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

## Standard Cell libraries 
set target_library [list $SSLIB $TTLIB $FFLIB]

## Standard Cell & Hard Macros libraries 
set link_library [list * $SSLIB $TTLIB $FFLIB]  

#echo "###############################################"
#echo "############# Reading RTL Files  ##############"
#echo "###############################################"

set file_format verilog

# Single blocks
analyze -format $file_format ALU.v
analyze -format $file_format RST_SYNC.v
analyze -format $file_format CLK_gate.v
analyze -format $file_format Integer_CLK_DIV.v
analyze -format $file_format Register_File.v
analyze -format $file_format SYS_CTRL.v


# FIFO BLOCKS
analyze -format $file_format Binary2Gray.v
analyze -format $file_format FIFO_Mem.v
analyze -format $file_format FIFO_RD.v
analyze -format $file_format FIFO_WR.v
analyze -format $file_format sync.v
analyze -format $file_format FIFO_top.v

# RST_SYNC
analyze -format $file_format Pulse_generator.v
analyze -format $file_format Multi_FF.v
analyze -format $file_format DATA_SYNC.v


# UART
analyze -format $file_format FSM_CU_RX.v
analyze -format $file_format FSM_CU_TX.v
analyze -format $file_format edge_bit_counter_RX.v
analyze -format $file_format MUX_TX.v
analyze -format $file_format Parity_gen_TX.v
analyze -format $file_format Parity_check_RX.v
analyze -format $file_format parallel_2_serial_TX.v
analyze -format $file_format Stop_check_RX.v
analyze -format $file_format Start_check_RX.v
analyze -format $file_format Serial_2_parallel_RX.v
analyze -format $file_format sampler_RX.v
analyze -format $file_format UART_TX.v
analyze -format $file_format UART_RX.v
analyze -format $file_format UART_TOP.v

# system
analyze -format $file_format system_top.v

elaborate -lib WORK SYS_TOP
###################### Defining toplevel ###################################

current_design $top_module

#################### Liniking All The Design Parts #########################
puts "###############################################"
puts "######## Liniking All The Design Parts ########"
puts "###############################################"

link 

#################### Liniking All The Design Parts #########################
puts "###############################################"
puts "######## checking design consistency ##########"
puts "###############################################"

check_design >> reports/check_design.rpt

############################### Path groups ################################
puts "###############################################"
puts "################ Path groups ##################"
puts "###############################################"

group_path -name INREG -from [all_inputs]
group_path -name REGOUT -to [all_outputs]
group_path -name INOUT -from [all_inputs] -to [all_outputs]

#################### Define Design Constraints #########################
puts "###############################################"
puts "############ Design Constraints #### ##########"
puts "###############################################"

source -echo ./cons.tcl

###################### Mapping and optimization ########################
puts "###############################################"
puts "########## Mapping & Optimization #############"
puts "###############################################"

compile

###################### Close Formality Setup file ###########################

set_svf -off

#############################################################################
# Write out files
#############################################################################

write_file -format verilog -hierarchy -output Netlists/System_Netlist_pre_DFT.ddc
write_file -format verilog -hierarchy -output Netlists/System_Netlist_pre_DFT.v
write_sdf  sdf/System.sdf
write_sdc  -nosplit sdc/System.sdc


################# reporting #######################

report_area -hierarchy > reports/area.rpt
report_power -hierarchy > reports/power.rpt
report_timing -delay_type min -max_paths 20 > reports/hold.rpt
report_timing -delay_type max -max_paths 20 > reports/setup.rpt
report_clock -attributes > reports/clocks.rpt
report_constraint -all_violators -nosplit > reports/constraints.rpt

############################################################################
# DFT Preparation Section
############################################################################

set flops_per_chain 100

set num_flops [sizeof_collection [all_registers -edge_triggered]]

set num_chains [expr $num_flops / $flops_per_chain + 1 ]

################# starting graphical user interface #######################

#gui_start
