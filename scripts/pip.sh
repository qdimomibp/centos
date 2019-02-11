#!/bin/sh
cd /tmp
curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip-py"
python get-pip.py

pip install --user pymediainfo
pip install --user PySide2
pip install --user numpy
pip install --user Cython
pip install --user openpyxl
pip install --user xlsxwriter
pip install --user xlrd
pip install --user xlwt
pip install --user xlutils
pip install --user pillow
