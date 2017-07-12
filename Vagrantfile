# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "centos/7"
  config.vm.box_version = "1706.02"
  config.vm.synced_folder ".", "/vagrant", type: "rsync", rsync__auto: "true"

  config.vm.provision "shell", path: "provision.sh"
  config.vm.network "public_network", bridge: ["wlp4s0", "eth0"]
end
