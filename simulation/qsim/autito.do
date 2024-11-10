onerror {quit -f}
vlib work
vlog -work work autito.vo
vlog -work work autito.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.SumaoResta_vlg_vec_tst
vcd file -direction autito.msim.vcd
vcd add -internal SumaoResta_vlg_vec_tst/*
vcd add -internal SumaoResta_vlg_vec_tst/i1/*
add wave /*
run -all
