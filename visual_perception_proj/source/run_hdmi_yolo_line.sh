#!/bin/sh -x
fl2000=$(lsmod | grep fl2000 | awk '{print $1}')
echo $fl2000
if [ "$fl2000" != "fl2000" ]; then

   echo "insmod fl2000"
else

   echo "fl2000 already insmod"
fi

export PATH=$PATH:/system/bin:/bm_bin
export QTDIR=../../install/lib # qtlib��ϵͳ�ϵ�·��
export QT_QPA_FONTDIR=$QTDIR/fonts
export QT_QPA_PLATFORM_PLUGIN_PATH=../../install/plugins # plugins��install�µ�·��
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:../../install/lib/:../lib/
# ���qtlib��·����bmlib���·��?��������
export QT_QPA_PLATFORM=linuxfb:fb=/dev/fl2000-0 #framebuffer����
export QWS_MOUSE_PROTO=/dev/input/event3

chmod +x ./yolov5s_line_demo
./yolov5s_line_demo
