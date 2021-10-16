# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    # Box
    config.vm.box = "ubuntu/impish64"

    # Shared folders
    config.vm.synced_folder ".", "/srv"

    # Provisionning
    config.vm.provision "shell", path: "provision.sh"
end
