# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "precise32"
  # config.vm.box_url = "http://domain.com/path/to/above.box"
  config.vm.network :forwarded_port, guest: 5000, host: 5050
  config.vm.network :private_network, ip: "10.10.10.10"
  # config.vm.synced_folder "../data", "/vagrant_data"

  config.vm.provider :virtualbox do |vb|
  #   # Use VBoxManage to restrict to one cpu and 512 ram
    vb.customize ["modifyvm", :id, "--memory", "512", "--cpus", "1"]
  end

  config.vm.provision "shell", path: "script.sh"
end
