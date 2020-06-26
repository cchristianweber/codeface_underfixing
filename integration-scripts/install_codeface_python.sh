#!/bin/sh
# Copyright Roger Meier <roger@bufferoverflow.ch>
# SPDX-License-Identifier:	Apache-2.0 BSD-2-Clause GPL-2.0+ MIT WTFPL

echo "Providing codeface python"

# permission error codeface.egg-info/requires.txt
#sudo chmod u+rx codeface.egg-info/requires.txt

# replace with apt install python3-setuptools
#sudo pip install --upgrade -q setuptools
#sudo pip install --upgrade -q mock
#sudo pip install --upgrade -q subprocess32
# for package replacement 
sudo apt install python3-setuptools python3-dev default-libmysqlclient-dev build-essential python3-pip

sudo pip3 install mysqlclient
#sudo python2.7 setup.py -q develop

sudo python3 setup.py -q develop

