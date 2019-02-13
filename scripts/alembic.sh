#!/bin/sh
if [ ! -d "/home/$USER/app" ]; then
	mkdir /home/$USER/app
fi

cd /home/$USER/app
wget https://github.com/alembic/alembic_src
cd alembic_src
git tag
git checkout v1.7.10
cd ..
mkdir alembic_build
mkdir alembic
cd alembic_build
~/app/cmake-3.13.3/bin/cmake ../alembic_src -DILMBASE_ROOT=$HOME/app/IlmBase -DALEMBIC_SHARED_LIBS=OFF -DUSE_HDF5=OFF -DALEMBIC_LIB_USES_TR1=ON -DCMAKE_INSTALL_PREFIX=$HOME/app/alembic
make -j2
make install
