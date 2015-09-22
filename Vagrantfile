# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
	config.vm.box = "master"
        config.vm.network "forwarded_port",guest: 8080, host: 8080
        config.vm.hostname = 'puppetmaster'

	config.vm.provision "puppet" do |puppet|
	  puppet.manifests_path = "manifests"
	  puppet.module_path = "modules"
	  puppet.hiera_config_path = "hiera.yaml"
	end
 
 	config.vm.provision "shell" do |s|
	  s.path = "provision/setup.sh"
        end
end
