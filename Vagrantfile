# Vagrant vagrant-sta130 file based on Ubuntu Artful
# Maintainer: Darko Gavrilovic, UofT
# Date: May 3, 2018

Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/artful64"

  config.vm.define "sta130" do |host|
    host.vm.hostname = "sta130"
	host.vm.post_up_message = "Vagrant VM machine for STA130H1"
    host.vm.provider :virtualbox do |vb|
	  vb.name = host.vm.hostname.to_s
	  vb.gui = false
      vb.memory = "1024"
    end
  end

# we will configure ssh forwarding to try to get r-studio to work in a X11 session
  config.ssh.forward_agent = true
  config.ssh.forward_x11 = true

# TODO: setup a nfs data mount
#  config.vm.synced_folder "./data/", "/home/vagrant/data" , create:true

# Refer to setup shell script for packages and installation steps
   config.vm.provision "shell", path: "setup.sh"
end