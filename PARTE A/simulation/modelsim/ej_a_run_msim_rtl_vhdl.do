transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/monig/OneDrive/Escritorio/lab_fpga/PARTE A/ej_a.vhd}

vcom -93 -work work {C:/Users/monig/OneDrive/Escritorio/lab_fpga/PARTE A/testbench_ej_a.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  testbench_ej_a

add wave *
view structure
view signals
run -all
