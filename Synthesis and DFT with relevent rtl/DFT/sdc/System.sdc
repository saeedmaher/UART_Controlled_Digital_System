###################################################################

# Created by write_sdc on Fri Oct 2 04:18:26 2026

###################################################################
set sdc_version 2.1

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_operating_conditions -max scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -max_library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -min scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c -min_library scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports UART_RX_IN]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports SE]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports test_mode]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {SI[3]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {SI[2]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {SI[1]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {SI[0]}]
set_load -pin_load 0.1 [get_ports UART_TX_OUT]
set_load -pin_load 0.1 [get_ports parity_error]
set_load -pin_load 0.1 [get_ports stop_error]
set_load -pin_load 0.1 [get_ports {SO[3]}]
set_load -pin_load 0.1 [get_ports {SO[2]}]
set_load -pin_load 0.1 [get_ports {SO[1]}]
set_load -pin_load 0.1 [get_ports {SO[0]}]
set_case_analysis 1 [get_ports test_mode]
create_clock [get_ports REF_CLK]  -name MASTER_REF_CLK  -period 20  -waveform {0 10}
set_clock_latency 0  [get_clocks MASTER_REF_CLK]
set_clock_uncertainty -setup 0.2  [get_clocks MASTER_REF_CLK]
set_clock_uncertainty -hold 0.1  [get_clocks MASTER_REF_CLK]
set_clock_transition -min -fall 0.05 [get_clocks MASTER_REF_CLK]
set_clock_transition -min -rise 0.05 [get_clocks MASTER_REF_CLK]
set_clock_transition -max -fall 0.05 [get_clocks MASTER_REF_CLK]
set_clock_transition -max -rise 0.05 [get_clocks MASTER_REF_CLK]
create_clock [get_ports UART_CLK]  -name MASTER_UART_CLK  -period 217.267  -waveform {0 108.633}
set_clock_latency 0  [get_clocks MASTER_UART_CLK]
set_clock_uncertainty -setup 0.2  [get_clocks MASTER_UART_CLK]
set_clock_uncertainty -hold 0.1  [get_clocks MASTER_UART_CLK]
set_clock_transition -min -fall 0.05 [get_clocks MASTER_UART_CLK]
set_clock_transition -min -rise 0.05 [get_clocks MASTER_UART_CLK]
set_clock_transition -max -fall 0.05 [get_clocks MASTER_UART_CLK]
set_clock_transition -max -rise 0.05 [get_clocks MASTER_UART_CLK]
create_generated_clock [get_pins ICG0/gated_clk]  -name GENERATED_ALU_CLK  -source [get_ports REF_CLK]  -master_clock MASTER_REF_CLK  -divide_by 1  -add
set_clock_latency 0  [get_clocks GENERATED_ALU_CLK]
set_clock_uncertainty -setup 0.2  [get_clocks GENERATED_ALU_CLK]
set_clock_uncertainty -hold 0.1  [get_clocks GENERATED_ALU_CLK]
set_clock_transition -min -fall 0.05 [get_clocks GENERATED_ALU_CLK]
set_clock_transition -min -rise 0.05 [get_clocks GENERATED_ALU_CLK]
set_clock_transition -max -fall 0.05 [get_clocks GENERATED_ALU_CLK]
set_clock_transition -max -rise 0.05 [get_clocks GENERATED_ALU_CLK]
create_generated_clock [get_pins CLK_DIV0/o_div_clk]  -name GENERATED_TX_CLK  -source [get_ports UART_CLK]  -master_clock MASTER_UART_CLK  -divide_by 32  -add
set_clock_latency 0  [get_clocks GENERATED_TX_CLK]
set_clock_uncertainty -setup 0.2  [get_clocks GENERATED_TX_CLK]
set_clock_uncertainty -hold 0.1  [get_clocks GENERATED_TX_CLK]
set_clock_transition -min -fall 0.05 [get_clocks GENERATED_TX_CLK]
set_clock_transition -min -rise 0.05 [get_clocks GENERATED_TX_CLK]
set_clock_transition -max -fall 0.05 [get_clocks GENERATED_TX_CLK]
set_clock_transition -max -rise 0.05 [get_clocks GENERATED_TX_CLK]
create_generated_clock [get_pins CLK_DIV1/o_div_clk]  -name GENERATED_RX_CLK  -source [get_ports UART_CLK]  -master_clock MASTER_UART_CLK  -divide_by 1  -add
set_clock_latency 0  [get_clocks GENERATED_RX_CLK]
set_clock_uncertainty -setup 0.2  [get_clocks GENERATED_RX_CLK]
set_clock_uncertainty -hold 0.1  [get_clocks GENERATED_RX_CLK]
set_clock_transition -min -fall 0.05 [get_clocks GENERATED_RX_CLK]
set_clock_transition -min -rise 0.05 [get_clocks GENERATED_RX_CLK]
set_clock_transition -max -fall 0.05 [get_clocks GENERATED_RX_CLK]
set_clock_transition -max -rise 0.05 [get_clocks GENERATED_RX_CLK]
group_path -name INOUT  -from [list [get_ports RST_N] [get_ports UART_CLK] [get_ports REF_CLK] [get_ports UART_RX_IN] [get_ports SCAN_CLK] [get_ports SCAN_RST] [get_ports SE] [get_ports test_mode] [get_ports {SI[3]}] [get_ports {SI[2]}] [get_ports {SI[1]}] [get_ports {SI[0]}]]  -to [list [get_ports UART_TX_OUT] [get_ports parity_error] [get_ports stop_error] [get_ports {SO[3]}] [get_ports {SO[2]}] [get_ports {SO[1]}] [get_ports {SO[0]}]]
group_path -name INREG  -from [list [get_ports RST_N] [get_ports UART_CLK] [get_ports REF_CLK] [get_ports UART_RX_IN] [get_ports SCAN_CLK] [get_ports SCAN_RST] [get_ports SE] [get_ports test_mode] [get_ports {SI[3]}] [get_ports {SI[2]}] [get_ports {SI[1]}] [get_ports {SI[0]}]]
group_path -name REGOUT  -to [list [get_ports UART_TX_OUT] [get_ports parity_error] [get_ports stop_error] [get_ports {SO[3]}] [get_ports {SO[2]}] [get_ports {SO[1]}] [get_ports {SO[0]}]]
set_input_delay -clock MASTER_UART_CLK  43.4534  [get_ports UART_RX_IN]
set_output_delay -clock MASTER_UART_CLK  43.4534  [get_ports UART_TX_OUT]
set_output_delay -clock MASTER_UART_CLK  43.4534  [get_ports parity_error]
set_output_delay -clock MASTER_UART_CLK  43.4534  [get_ports stop_error]
