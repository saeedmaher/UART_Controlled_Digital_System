###############################################################################
# Libs
###############################################################################
set SSLIB "/home/ICer/project/std/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set FFLIB "/home/ICer/project/std/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"
set TTLIB "/home/ICer/project/std/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"

###############################################################################
# Setup commad
###############################################################################
set synopsys_auto_setup true

###############################################################################
# Guidence
###############################################################################
set_svf /home/ICer/project/syn/SYS_TOP.svf

###############################################################################
# Reference container
###############################################################################
set rtl_path "/home/ICer/project/rtl"

# Single blocks
#-------------------------------
read_verilog -container REF $rtl_path/ALU.v
read_verilog -container REF $rtl_path/RST_SYNC.v
read_verilog -container REF $rtl_path/CLK_gate.v
read_verilog -container REF $rtl_path/Integer_CLK_DIV.v
read_verilog -container REF $rtl_path/Register_File.v
read_verilog -container REF $rtl_path/SYS_CTRL.v


# FIFO BLOCKS
#-------------------------------
read_verilog -container REF $rtl_path/Binary2Gray.v
read_verilog -container REF $rtl_path/FIFO_Mem.v
read_verilog -container REF $rtl_path/FIFO_RD.v
read_verilog -container REF $rtl_path/FIFO_WR.v
read_verilog -container REF $rtl_path/sync.v
read_verilog -container REF $rtl_path/FIFO_top.v

# RST_SYNC
#-------------------------------
read_verilog -container REF $rtl_path/Pulse_generator.v
read_verilog -container REF $rtl_path/Multi_FF.v
read_verilog -container REF $rtl_path/DATA_SYNC.v


# UART
#-------------------------------
read_verilog -container REF $rtl_path/FSM_CU_RX.v
read_verilog -container REF $rtl_path/FSM_CU_TX.v
read_verilog -container REF $rtl_path/edge_bit_counter_RX.v
read_verilog -container REF $rtl_path/MUX_TX.v
read_verilog -container REF $rtl_path/Parity_gen_TX.v
read_verilog -container REF $rtl_path/Parity_check_RX.v
read_verilog -container REF $rtl_path/parallel_2_serial_TX.v
read_verilog -container REF $rtl_path/Stop_check_RX.v
read_verilog -container REF $rtl_path/Start_check_RX.v
read_verilog -container REF $rtl_path/Serial_2_parallel_RX.v
read_verilog -container REF $rtl_path/sampler_RX.v
read_verilog -container REF $rtl_path/UART_TX.v
read_verilog -container REF $rtl_path/UART_RX.v
read_verilog -container REF $rtl_path/UART_TOP.v

# system
#-------------------------------
read_verilog -container REF $rtl_path/system_top.v

# Libs
#-------------------------------
read_db -container REF [list $SSLIB $TTLIB $FFLIB]

set_reference_design SYS_TOP
set_top SYS_TOP

###############################################################################
# Implementation container
###############################################################################
read_verilog -netlist -container IMP /home/ICer/project/syn/Netlists/System_Netlist_pre_DFT.v

read_db -container IMP [list $SSLIB $TTLIB $FFLIB]

set_implementation_design SYS_TOP
set_top SYS_TOP

###############################################################################
# match comd
###############################################################################
match

###############################################################################
# verify cmd
###############################################################################
verify

###############################################################################
# Reports
###############################################################################
report_passing_points > reports/passing_points.rpt
report_failing_points > reports/failing_points.rpt
report_aborted_points > reports/aborted_points.rpt
report_unverified_points > reports/unverified_points.rpt
report_unread_endpoints -all > reports/unread_endpoints.rpt
report_not_compared_points > reports/umcompared_points.rpt

