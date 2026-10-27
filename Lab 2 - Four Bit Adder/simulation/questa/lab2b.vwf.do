vlog -work work lab2b.vwf.vt
vsim -voptargs=+acc -c -t 1ps -L fiftyfivenm_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.lab2b_vlg_vec_tst -voptargs="+acc"
add wave /*
run -all
