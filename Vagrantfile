# -*- mode: ruby -*-
# vi: set ft=ruby ts=2 sw=2 expandtab:

Vagrant::Config.run do |config|
  config.vm.box = "ubuntu-natty-64"
  config.vm.define :puppet_test do |cfg|
    cfg.vm.customize [ "modifyvm", :id, "--name", "vagrant puppet test"]

    cfg.vm.provision :puppet do |puppet|
      puppet.manifests_path = "puppet/manifests"
      puppet.manifest_file  = "vagrant.pp"
    end
  end
end
