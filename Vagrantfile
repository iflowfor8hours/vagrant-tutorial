# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "sgprecise32"
  config.vm.box_url = "sgprecise32.box"
  config.vm.network :private_network, ip: "10.10.10.10"

  config.vm.provider :virtualbox do |vb|
  #   # Use VBoxManage to restrict to one cpu and 512 ram
    vb.customize ["modifyvm", :id, "--memory", "512", "--cpus", "1"]
    vb.gui = true
  end
#  config.vm.provision "shell", path: "script.sh"
end
