#!/bin/sh
# 그래픽카드 드라이버를 설치하기 위한 쉘스크립트입니다.
yum -y update
yum -y install kernel-devel
yum -y install kernel-headers
yum -y install gcc make
yum -y install

# 모팩아카데이용 그래픽카드 드라이버
cd /tmp
wget http://kr.download.nvidia.com/XFree86/Linux-x86_64/410.78/NVIDIA-Linux-x86_64-410.78.run
