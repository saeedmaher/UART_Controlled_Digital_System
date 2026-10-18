# Clear any existing wave window content
delete wave *

# ------------------------------------------------------------
# SECTION 0: Test Case number
# ------------------------------------------------------------
add wave -noupdate -divider "TestCase"
add wave -noupdate -label TestCase /tb_final_system/testcase

# ------------------------------------------------------------
# SECTION 1: Top-Level System Configurations
# ------------------------------------------------------------
add wave -noupdate -divider "Configs"
add wave -noupdate -label Parity_EN         /tb_final_system/DUT/RF0/UART_CON[0]
add wave -noupdate -label Parity_type       /tb_final_system/DUT/RF0/UART_CON[1]
add wave -noupdate -label Prescale          /tb_final_system/DUT/RF0/UART_CON[7:2]
add wave -noupdate -label DIV_RX_CLK_ratio  /tb_final_system/DUT/RX_DIV_ratio
add wave -noupdate -label DIV_TX_CLK_ratio  /tb_final_system/DUT/RF0/DIV_ratio


# ------------------------------------------------------------
# SECTION 2: Top-Level System Signals
# ------------------------------------------------------------
add wave -noupdate -divider "TOP SYSTEM"
add wave -noupdate -label REF_CLK        /tb_final_system/REF_CLK
add wave -noupdate -label UART_CLK       /tb_final_system/UART_CLK
add wave -noupdate -label RST            /tb_final_system/RST
add wave -noupdate -label RX_IN          /tb_final_system/RX_IN
add wave -noupdate -label TX_OUT         /tb_final_system/TX_OUT
add wave -noupdate -label parity_error   /tb_final_system/parity_error
add wave -noupdate -label stop_error     /tb_final_system/stop_error

# ------------------------------------------------------------
# SECTION 3: ALU Operands, Function, and Output
# ------------------------------------------------------------
add wave -noupdate -divider "ALU"
add wave -noupdate -label clk            /tb_final_system/DUT/ALU0/clk
add wave -noupdate -label rst_n          /tb_final_system/DUT/ALU0/rst_n
add wave -noupdate -label enable         /tb_final_system/DUT/ALU0/enable
add wave -noupdate -label A       -radix unsigned /tb_final_system/DUT/ALU0/A
add wave -noupdate -label B       -radix unsigned /tb_final_system/DUT/ALU0/B
add wave -noupdate -label ALU_FUN -radix unsigned /tb_final_system/DUT/ALU0/ALU_FUN
add wave -noupdate -label ALU_OUT -radix unsigned /tb_final_system/DUT/ALU0/ALU_OUT
add wave -noupdate -label out_valid      /tb_final_system/DUT/ALU0/out_valid

# ------------------------------------------------------------
# SECTION 4: UART 
# ------------------------------------------------------------
add wave -noupdate -divider "TX & RX CLK"
add wave -noupdate -label TX_CLK            /tb_final_system/DUT/UART0/tx_clk
add wave -noupdate -label RX_CLK            /tb_final_system/DUT/UART0/rx_clk
add wave -noupdate -label RX_Parallel_Data  /tb_final_system/DUT/UART0/rx_out_p
add wave -noupdate -label TX_IN_Data        /tb_final_system/DUT/UART0/tx_in_p_data
add wave -noupdate -label TX_OUT_Bits       /tb_final_system/DUT/UART0/tx_out_s
add wave -noupdate -label TX_BUSY           /tb_final_system/DUT/UART0/tx_busy


# ------------------------------------------------------------
# Wave window display settings
# ------------------------------------------------------------
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ns} 0}
configure wave -namecolwidth 220
configure wave -valuecolwidth 110
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -timeline 0

update
WaveRestoreZoom {0 ns} {500 us}