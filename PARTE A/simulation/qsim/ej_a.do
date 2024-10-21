onerror {quit -f}
vlib work
vlog -work work ej_a.vo
vlog -work work ej_a.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.ej_a_vlg_vec_tst
vcd file -direction ej_a.msim.vcd
vcd add -internal ej_a_vlg_vec_tst/*
vcd add -internal ej_a_vlg_vec_tst/i1/*
add wave /*
run -all
