#!/bin/sh
yum -y remove djv
cd /tmp
wget https://sourceforge.net/projects/djv/files/djv-stable/1.2.5/DJV-1.2.5-1.x86_64.rpm
yum -y install DJV-1.2.5-1.x86_64.rpm
rm /tmp/DJV-1.2.5-1.x86_64.rpm*
