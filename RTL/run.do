vlib work
vlog -f src_files.list
vsim -voptargs=+acc work.tb_final_system 
do wave.do 
run -all