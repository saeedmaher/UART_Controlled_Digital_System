
# Constraints
# ----------------------------------------------------------------------------
#
# 1. Master Clock Definitions
#
# 2. Generated Clock Definitions
#
# 3. Clock Uncertainties
#
# 4. Clock Latencies 
#
# 5. Clock Relationships
#
# 6. set input/output delay on ports
#
# 7. Driving cells
#
# 8. Output load

####################################################################################
           #########################################################
                  #### Section 1 : Clock Definition ####
           #########################################################
#################################################################################### 
# 1. Master Clock Definitions 
# 2. Generated Clock Definitions
# 3. Clock Latencies
# 4. Clock Uncertainties
# 5. Clock Transitions
####################################################################################

set REF_CLK_PER 20
set UART_CLK_PER 217.267
set CLK_SETUP_SKEW 0.2
set CLK_HOLD_SKEW 0.1
set CLK_LAT 0
set CLK_TRANS 0.05


# Maseter clocks
#---------------------------------------------------------------------------
create_clock -period $REF_CLK_PER -name MASTER_REF_CLK [get_ports REF_CLK]
create_clock -period $UART_CLK_PER -name MASTER_UART_CLK [get_ports UART_CLK]

# Generated clocks
#---------------------------------------------------------------------------
#ALU clock
create_generated_clock -master_clock MASTER_REF_CLK \
			-source [get_ports REF_CLK] \
			-name GENERATED_ALU_CLK \
			-divide_by 1 [get_ports ICG0/gated_clk]
#UART Tx clock
create_generated_clock -master_clock MASTER_UART_CLK \
			-source [get_ports UART_CLK] \
			-name GENERATED_TX_CLK \
			-divide_by 32 [get_ports CLK_DIV0/o_div_clk]
#UART Rx clock
create_generated_clock -master_clock MASTER_UART_CLK \
			-source [get_ports UART_CLK] \
			-name GENERATED_RX_CLK \
			-divide_by 1 [get_ports CLK_DIV1/o_div_clk]			

# uncertainty + latency
#---------------------------------------------------------------------------
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks {MASTER_REF_CLK MASTER_UART_CLK GENERATED_ALU_CLK GENERATED_TX_CLK GENERATED_RX_CLK}]		   
set_clock_uncertainty -hold $CLK_HOLD_SKEW [get_clocks {MASTER_REF_CLK MASTER_UART_CLK GENERATED_ALU_CLK GENERATED_TX_CLK GENERATED_RX_CLK}]		   
					  
set_clock_latency 0 [get_clocks {MASTER_REF_CLK MASTER_UART_CLK GENERATED_ALU_CLK GENERATED_TX_CLK GENERATED_RX_CLK}]

# Transation
#---------------------------------------------------------------------------
set_clock_transition $CLK_TRANS [get_clocks {MASTER_REF_CLK MASTER_UART_CLK GENERATED_ALU_CLK GENERATED_TX_CLK GENERATED_RX_CLK}]

# Don not touch network
#---------------------------------------------------------------------------
set_dont_touch_network [get_clocks {MASTER_REF_CLK MASTER_UART_CLK GENERATED_ALU_CLK GENERATED_TX_CLK GENERATED_RX_CLK}]

####################################################################################
           #########################################################
                  #### Section 2 : Clocks Relationships ####
           #########################################################
####################################################################################

set_clock_groups -asynchronous -group [get_clocks {MASTER_UART_CLK GENERATED_TX_CLK GENERATED_RX_CLK}] \
				-group [get_clocks {MASTER_REF_CLK GENERATED_ALU_CLK}]

####################################################################################
           #########################################################
             #### Section 3 : set input/output delay on ports ####
           #########################################################
####################################################################################

# UART CLK
set in_delay_uart  [expr 0.2*$UART_CLK_PER]
set out_delay_uart [expr 0.3*$UART_CLK_PER]


#Constrain Input Paths
set_input_delay $in_delay_uart -clock MASTER_UART_CLK [get_ports UART_RX_IN]

#Constrain Output Paths
set_output_delay $out_delay_uart -clock MASTER_UART_CLK [get_ports UART_TX_OUT]
set_output_delay $out_delay_uart -clock MASTER_UART_CLK [get_ports parity_error]
set_output_delay $out_delay_uart -clock MASTER_UART_CLK [get_ports stop_error]


####################################################################################
           #########################################################
                  #### Section 4 : Driving cells ####
           #########################################################
####################################################################################

set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M -pin Y [get_port UART_RX_IN]

####################################################################################
           #########################################################
                  #### Section 5 : Output load ####
           #########################################################
####################################################################################

set_load 0.1 [all_outputs]

####################################################################################
           #########################################################
                 #### Section 6 : Operating Condition ####
           #########################################################
####################################################################################

# Define the Worst Library for Max(#setup) analysis
# Define the Best Library for Min(hold) analysis
set_operating_conditions -min_library "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" -min "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" \
			-max_library "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c" -max "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c"

####################################################################################
           #########################################################
                  #### Section 7 : wireload Model ####
           #########################################################
####################################################################################


####################################################################################
           #########################################################
                  #### Section 8 : multicycle path ####
           #########################################################
####################################################################################


