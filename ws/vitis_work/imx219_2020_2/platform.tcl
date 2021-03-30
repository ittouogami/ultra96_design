# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/hara/ws/vitis_work/imx219_2020_2/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/hara/ws/vitis_work/imx219_2020_2/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {imx219_2020_2}\
-hw {/home/hara/fixstars/ultra96_design/ultra96_design/design_1_wrapper.xsa}\
-proc {psu_cortexa53_0} -os {standalone} -arch {64-bit} -fsbl-target {psu_cortexa53_0} -out {/home/hara/ws/vitis_work}

platform write
platform generate -domains 
platform active {imx219_2020_2}
domain active {zynqmp_fsbl}
bsp reload
bsp config stdin "psu_uart_1"
bsp config stdout "psu_uart_1"
bsp write
bsp reload
catch {bsp regenerate}
domain active {standalone_domain}
bsp reload
bsp config stdin "psu_uart_1"
bsp config stdout "psu_uart_1"
bsp write
bsp reload
catch {bsp regenerate}
domain active {zynqmp_pmufw}
bsp reload
bsp config stdin "psu_uart_1"
bsp config stdout "psu_uart_1"
bsp write
bsp reload
catch {bsp regenerate}
platform generate
platform active {imx219_2020_2}
platform active {imx219_2020_2}
