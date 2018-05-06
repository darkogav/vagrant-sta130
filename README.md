  A Vagrant file for setting up a consistent local Linux environment for Stats course
  Maintainer: Darko Gavrilovic, UofT
  Date: May 3, 2018

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

Install MobaXterm on Windows
- set session to 
- host: 127.0.0.1
- port: 2222
- user: vagrant
- password: path to private_key file. (e.g. .\.vagrant\machines\sta130\virtualbox\private_key)

** Instructions **
- make a directory on your machine. Preferably under C:\ or My Documents
- install git, Vagrant, VirtualBox and MobaXterm
- cd to directory
- type `git clone https://github.com/darkogav/vagrant-sta130`
- type `vagrant up`
- Once the machine is ready, type `vagrant ssh` to log into the machine
- type `vagrant halt` to shutdown the machine.

When the course is done, you can remove the machine
- type `vagrant global status` to get the id of the machine
- type `vagrant destroy $id -f` to remove the machine
- remove Vagrant, VirtualBox, MobaXterm and delete the folder

**Resources:**
- [ ] https://ntaback.github.io/UofT_STA130/STA130syllabus2018S.html 
- [ ] https://github.com/ntaback/UofT_STA130 


TODO Tasks:
- [x] get full list of R packages
- [ ] try to get this to work with a secure NFS share for the Vagrant sync folder
- [ ] can you use Jypiter for this as a addon?
- [ ] test to try to see if can work with other X11 packages such as Qwartz
- [ ] add this to the chass site as work
- [ ] Try to package a complete install as a Vagrant box file
