#!/bin/sh -x
fl2000=$(lsmod | grep fl2000 | awk '{print $1}')
echo $fl2000
if [ "$fl2000" != "fl2000" ]; then

   echo "insmod fl2000"
else

   echo "fl2000 already insmod"
fi

export PATH=$PATH:/system/bin:/bm_bin
export QTDIR=../../install/lib # qtlib在系统上的路径
export QT_QPA_FONTDIR=$QTDIR/fonts
export QT_QPA_PLATFORM_PLUGIN_PATH=../../install/plugins # plugins在install下的路径
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:../../install/lib/:../lib/
# 添加qtlib的路径与bmlib库的路径?环境变量
export QT_QPA_PLATFORM=linuxfb:fb=/dev/fl2000-0 #framebuffer驱动
export QWS_MOUSE_PROTO=/dev/input/event3

chmod +x ./yolov5s_line_demo
./yolov5s_line_demo
