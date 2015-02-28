# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "centos65min"
  config.vm.box_url = "https://github.com/2creatives/vagrant-centos/releases/download/v6.5.3/centos65-x86_64-20140116.box"

  config.vm.network "private_network", ip: "192.168.33.10"
  
  config.vm.provision :shell, :path => "sh/setup_root.sh"
  config.vm.provision :shell, :path => "sh/setup_vagrant.sh", privileged: false
end
