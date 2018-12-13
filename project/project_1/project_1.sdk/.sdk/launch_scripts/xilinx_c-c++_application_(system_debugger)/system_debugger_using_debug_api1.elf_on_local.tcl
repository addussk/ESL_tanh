connect -url tcp:127.0.0.1:3121
source C:/Users/student/Documents/esl/marcinadrian/project/project_1/project_1.sdk/design_1_wrapper_hw_platform_0/ps7_init.tcl
targets -set -filter {jtag_cable_name =~ "Digilent Zybo 210279A4282FA" && level==0} -index 1
fpga -file C:/Users/student/Documents/esl/marcinadrian/project/project_1/project_1.sdk/design_1_wrapper_hw_platform_0/design_1_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zybo 210279A4282FA"} -index 0
loadhw -hw C:/Users/student/Documents/esl/marcinadrian/project/project_1/project_1.sdk/design_1_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zybo 210279A4282FA"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo 210279A4282FA"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo 210279A4282FA"} -index 0
dow C:/Users/student/Documents/esl/marcinadrian/project/project_1/project_1.sdk/api1/Debug/api1.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo 210279A4282FA"} -index 0
con
