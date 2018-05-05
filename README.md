# vagrant-stats
# A Vagrant file for setting up a consistent local Linux environment for Stats course
# Maintainer: Darko Gavrilovic, UofT
# Date: May 3, 2018

TODO Tasks:
- [x] get full list of R packages
- [ ] try to get this to work with a secure NFS share for the Vagrant sync folder
- [ ] can you use Jypiter for this as a addon?
- [ ] test to try to see if can work with other X11 packages such as Qwartz
- [ ] add this to the chass site as work
- [ ] Try to package a complete install as a Vagrant box file

**OS:**
- Ubuntu 17.10

**Requirements:**
This solution has been tested using the below applications on Windows 10 x64
- Vagrant v.2.1.0
- VirtualBox v.5.1.26r117224
- MobaXterm
- Windows 10 Pro v.10.0.17134 N/A Build 17134

**Applications:**
- R
- R-Studio
- R packages
- Text editor

Access management GUI for master http://127.0.0.1:?/
- Port for R-Studio: ????
- Port for Jypiter: ????

Install MobaXterm on Windows
- set session to 
host: 127.0.0.1
port: 2222
user: vagrant
password: path to vagrant 

**Resources:**
- [ ] Nathan's site and github
- [ ] https://ntaback.github.io/UofT_STA130/STA130syllabus2018S.html 
- [ ] https://github.com/ntaback/UofT_STA130 
