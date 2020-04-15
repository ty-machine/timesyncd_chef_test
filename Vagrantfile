# -*- mode: ruby -*-
# vi:set ft=ruby sw=2 ts=2 sts=2:

NUM_NODE = 1
IP_NW = "192.168.5."
IP_START = 10

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
  config.vm.box_check_update = false
  (1..NUM_NODE).each do |i|
      config.vm.define "ubuntu-#{i}" do |node|
        node.vm.provider "virtualbox" do |vb|
            vb.name = "ubuntu-#{i}"
            vb.memory = 1024
            vb.cpus = 1
        end
        node.vm.hostname = "ubuntu-#{i}"
        node.vm.network :private_network, ip: IP_NW + "#{IP_START + i}"
        node.vm.network "forwarded_port", guest: 22, host: "#{2740 + i}"


        config.vm.provision "chef_solo" do |chef|
          chef.add_recipe "sysd-test::default"
          chef.arguments = "--chef-license accept"
        end
      end
  end

end