vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib

vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xpm  -incr -mfcu  -sv "+incdir+../../../../test_2.gen/sources_1/ip/vio_0_1/hdl/verilog" "+incdir+../../../../test_2.gen/sources_1/ip/vio_0_1/hdl" \
"D:/Xlink/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xlink/Vivado/2023.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"D:/Xlink/Vivado/2023.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../test_2.gen/sources_1/ip/vio_0_1/hdl/verilog" "+incdir+../../../../test_2.gen/sources_1/ip/vio_0_1/hdl" \
"../../../../test_2.gen/sources_1/ip/vio_0_1/sim/vio_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

