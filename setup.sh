#!/usr/bin/env bash
# Maintainer: Darko Gavrilovic, UofT
# Date: May 3, 2018

echo "Setting up Vagrant stats VM image"
# add the UofT R repo
echo -e "deb http://cran.utstat.utoronto.ca/bin/linux/ubuntu artful/" >> /etc/apt/sources.list.d/cran.list 
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9 >>/tmp/setup.log 2>&1

# update apt
apt-get update >>/tmp/setup.log 2>&1

# install packages for course
pkgs=(wget gdebi-core x11-apps x11-xserver-utils virtualbox-guest-dkms virtualbox-guest-utils virtualbox-guest-x11 r-base)
for p in ${pkgs[@]}; do apt-get install -y ${p}; done;  >>/tmp/setup.log 2>&1

# download and install R-Studio
wget https://download1.rstudio.org/rstudio-xenial-1.1.447-amd64.deb
echo "y" | gdebi rstudio-xenial-1.1.447-amd64.deb >>/tmp/setup.log 2>&1
rm rstudio-xenial-1.1.447-amd64.deb >>/tmp/setup.log 2>&1

apt-get clean all
echo "Setup complete .. rebooting.."
reboot >>/tmp/setup.log 2>&1