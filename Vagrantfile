# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure(2) do |config|
  config.ssh.insert_key = false
  config.vm.synced_folder "./", "/vagrant"
  config.vm.provision "shell", path: "tasks/install.sh"
  config.vm.define "sandbox-bullseye" do |node|
  
    node.vm.box               = "debian/bullseye64"
    node.vm.box_check_update  = false
    node.vm.hostname          = "sandbox-bullseye"

    node.vm.network "private_network", ip: "172.16.17.100"
  
    node.vm.provider :virtualbox do |v|
      v.name    = "sandbox-bullseye"
      v.memory  = 4096
      v.cpus    =  2
    end
  
    node.vm.provider :libvirt do |v|
      v.memory  = 4096
      v.cpus    = 2
      v.cpu_mode = 'host-passthrough'
    end
  end
end
