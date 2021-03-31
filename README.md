# Ultra96V2 Design

## Requirement

These are **MANDATORY** items to be installed.

1. Vivado 2020.2(Vitis)

You also need a debian SD card image.
1. Debian10 2020.1 [@ikwzm](https://github.com/ikwzm/ZynqMP-FPGA-Linux) 

## Getting started

- Follow the steps on the [Fixstars blog](https://proc-cpuinfo.fixstars.com/2019/01/ultra96-linux-mipi-camera-setup/).
    ```.sh
    git clone https://github.com/ittouogami/ultra96_design
    git submodule init
    git submodule update
    ```
- You need to create project by tcl script when right after cloning the repos.
Launch vivado and create project by tcl file.

	```.sh
	cd ultra96_design
	source script/create_project.tcl
	```

- Then you can do synthesize, implementation and create bitstream whatever.
The convert bitstream to bin. fpga.bin is generated in the hierarchy of ultra96\_design.
	```bash
	cd ultra96_design
	script/bit2bin.sh 
	```
- Create kernel header modules. You may get an error when building vdso, but ignore it. 
    ```.sh
    export ARCH=arm64
    export CROSS_COMPILE=/opt/Xilinx/Vitis/2020.2/gnu/aarch64/lin/aarch64-linux/bin/aarch64-linux-gnu-
    cd ./ultra96_design/src/linux/headers/linux-headers-5.4.0-xlnx-v2020.1-zynqmp-fpga
    make modules_prepare
    ```
- Create an SDK using vitis.  The vitis workspace is prepared as ./ws in my repos.
- Modify the makefile for convenience and build the v4l2 kernel module. v4l2.ko will be generated.
	```.sh
	cd ultra96_design/src/linux/driver
	make
	```
- Build the camera initialization software.
	```.sh
	cd ultra96_design/src/linux/caminit/build/
	make
	```
- Install the debian10 image on the sd card. Also, install the libgtk-3-dev package and libgl1-mesa-dev package on that debian with apt-get install, and then build opencv-3.4.1. Due to the relationship between OpenCV 3.4.1 and the Python version of debian 10, the official 3.4.1 build failed. Make the following changes to ./modules/python/src2/cv2.cpp.
	```.sh
	--- a/modules/python/src2/cv2.cpp
	+++ b/modules/python/src2/cv2.cpp
	@@ -886,7 +886,8 @@ bool pyopencv_to(PyObject* obj, String& value, const char* name)
	     (void)name;
	     if(!obj || obj == Py_None)
	         return true;
	-    char* str = PyString_AsString(obj);
	+    //char* str = PyString_AsString(obj);
	+    const char* str = PyString_AsString(obj);
	     if(!str)
	         return false;
	     value = String(str);
- Copy the following files from ./ultra96_design/overlay to your SD card.
	```.sh
	init_camera.sh
	rm_camera.sh
	fpga-load.dts
	fclk0-zynqmp.dts
	v4l2.dts
	```
- Also, copy the camera initialization program you built earlier to the same directory.
	```.sh
	caminit
	```
- Create and copy the directory /lib/modules/5.4.0-xlnx-v2020.1-zynqmp-fpga/kernel/drivers/v4l2 to the actual machine with v4l2.ko.
- Execute the following command.
	```.sh
	depmod -a
	```
- Copy the fpga.bin to the /lib/firmware directory.
- Run the camera initialization script with root.
	```.sh
	sudo ./init_camera.sh
	[ 5878.063313] fpga_manager fpga0: writing fpga.bin to Xilinx ZynqMP FPGA Manager
	[ 5878.461510] OF: overlay: WARNING: memory leak will occur if overlay removed, property: /fpga-full/firmware-name
	[ 5878.513348] fclkcfg: loading out-of-tree module taints kernel.
	[ 5878.521869] fclkcfg amba:fclk0: driver version : 1.7.2
	[ 5878.527043] fclkcfg amba:fclk0: device name    : amba:fclk0
	[ 5878.532661] fclkcfg amba:fclk0: clock  name    : pl0_ref
	[ 5878.537981] fclkcfg amba:fclk0: clock  rate    : 99999999
	[ 5878.543403] fclkcfg amba:fclk0: clock  enabled : 1
	[ 5878.548187] fclkcfg amba:fclk0: remove rate    : 1000000
	[ 5878.553497] fclkcfg amba:fclk0: remove enable  : 0
	[ 5878.558288] fclkcfg amba:fclk0: driver installed.
	[ 5878.578175] zynq_v4l2_init
	[ 5878.581268] v4l2 amba_pl@0:v4l2: Device Tree Probing
	[ 5878.586243] zynq_v4l2_probe
	[ 5878.589709] zynq_v4l2_vdma_init
	[ 5878.594900] zynq_v4l2_demosaic_init
	[ 5878.598424] zynq_v4l2_mipicsi_init
	ID = 0x2, 0x19
	```
- Copy the files in the files under ultra96_design/test to the working directory. Modify OPENCV_DIR in the makefile and run make.
	```.sh
	Everything under the camera_umd directory
	makefile
	uvc_camera_test.cc
	yuvtest.cc
	rgbtest.cc
	rgbvideo.cc
	cam.cc
	cam.h
	```
- Set the path where the OpenCV library is located in LD_LIBRARY_PATH.
	```.sh
	export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib
	```
- png image capture
	```.sh
	sudo ./rgbtest
	```
- Video playback 
	```.sh
	sudo ./rgbvideo
	```

