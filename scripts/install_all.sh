#!/bin/sh
./nvidia.sh
./utility.sh
./code.sh
./djv.sh
./mpv.sh
./rmbeep.sh
./trans.sh
./pip.sh
./devtools.sh
./handbrake.sh
./ocio.sh
./imageio.sh

#gcc6.x
scl enable devtoolset-6 ./camke.sh
scl enable devtoolset-6 ./openexr
