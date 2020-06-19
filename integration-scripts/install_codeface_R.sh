#!/bin/sh
# Copyright Roger Meier <roger@bufferoverflow.ch>
# SPDX-License-Identifier:	Apache-2.0 BSD-2-Clause GPL-2.0+ MIT WTtPL

echo "Providing R libraries"
# try sudo add-apt-repository ppa:marutter/c2d4u3.5
#sudo apt-get update
#sudo DEBIAN_FRONTEND=noninteractive apt-get -qqy install r-base r-base-dev r-base-core 
sudo DEBIAN_FRONTEND=noninteractive apt -qy install r-base r-base-dev r-base-core

sudo DEBIAN_FRONTEND=noninteractive add-apt-repository -y ppa:marutter/c2d4u3.5
sudo DEBIAN_FRONTEND=noninteractive apt-get -qy update  

#sudo R CMD javareconf
sudo apt install -qy r-cran-rjava

sudo DEBIAN_FRONTEND=noninteractive apt install -qy \
	r-cran-zoo r-cran-xts \
	r-cran-xtable r-cran-reshape r-cran-stringr r-cran-scales \
	r-cran-scales r-cran-rmysql \
	r-cran-rjson r-cran-testthat

echo "Providing R libraries - packages.r"

# added because Required package curl not found
sudo DEBIAN_FRONTEND=noninteractive apt install -qy libcurl4-openssl-dev libfontconfig1-dev libssl-dev libxml2-dev
# added because Rpoppler error
sudo DEBIAN_FRONTEND=noninteractive add-apt-repository -y ppa:cran/poppler
sudo DEBIAN_FRONTEND=noninteractive apt-get -qy update
sudo DEBIAN_FRONTEND=noninteractive apt install -qy libpoppler-cpp-dev
# added because gdtools, units, error
sudo DEBIAN_FRONTEND=noninteractive apt install -qy libcairo2-dev libudunits2-dev libmagick++-dev libgeos-dev libgdal-dev

sudo Rscript packages.r
# for test
echo "Test reinstall.package.from.github"
