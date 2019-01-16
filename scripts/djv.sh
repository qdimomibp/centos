#!/bin/sh
yum -y remove djv
cd /tmp
wget https://sourceforge.net/projects/djv/files/djv-stable/1.1.2/djv-1.1.2-Linux-64.rpm
yum -y install djv-1.1.2-Linux-64.rpm
rm /tmp/djv-1.1.2-Linux-64.rpm*
