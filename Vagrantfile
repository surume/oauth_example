# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.synced_folder ".", "/vagrant",
                          id: "core",
                          :nfs => true
                          # :mount_options => ['actimeo=2'],
                          # :mount_options => ['udp,fsc'],
                          # :mount_options => ['nolock,vers=3,noatime']
  config.vm.network "private_network", ip: "192.168.10.8"
  config.vm.hostname = "oauth-example.local"
  config.hostmanager.enabled = true
  config.hostmanager.manage_host = true
  # config.hostmanager.aliases = %w(vm-node1 vm-node2 vm-node3)
  # config.vm.network "forwarded_port", guest: 4000, host: 4000

  # config.vm.provision "shell", inline: <<-SHELL
  #   sudo apt-get update
  #   sudo apt-get install -y apache2
  # SHELL
end
