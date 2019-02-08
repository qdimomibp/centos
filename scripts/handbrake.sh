#!/bin/sh
if [[ $EUID -ne 0 ]]; then
	echo "This script must be run as Root" 1>&2
	exit 1
fi

yum -y update
yum -y group install "Development Tools" "Additional Development"
yum -y install fribidi-devel git jansson-devel libogg-devel libsamplerate-devel libtheora-devel libvorbis-devel opus-devel
yum -y install libass-devel yasm
yum -y repo-pkgs zmrepo remove
yum -y remove zmrepo #lame-devel,x264-devel 를 zmrepo에서 가지고 오지 않도록 하기위해서 제거합니다.
yum -y localinstall --nogpgcheck https://download1.rpmfusion.org/free/el/rpmfusion-free-release-7.noarch.rpm
yum -y install lame-devel x264-devel
if [ ! -d "/home/$USER/app"]; then
	mkdir /home/$USER/app

	fi

cd /home/$USER/app
git clone https://github.com/HandBrake/HandBrake.git
cd HandBrake
git tag --list | grep ^1\.1\.
git checkout refs/tas/$(git tag -1 | grep -E '^1\.1\.[0-9]+$' | tail -n 1)
./configure --launch-jobs=$(nproc) --launch
make --directory=build install
rm -rf build
