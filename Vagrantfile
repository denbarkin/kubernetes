# -*- mode: ruby -*-
# vi: set ft=ruby :
servers=[
  {
    :hostname => "controller",
    :box => "ubuntu/bionic64",
    :ram => 6144,
    :cpu => 4,
    :disk => "20GB"
  },
]

Vagrant.configure(2) do |config|
    servers.each do |machine|
        config.vm.define machine[:hostname] do |node|
            node.vm.box = machine[:box]
            node.disksize.size = machine[:disk]
            node.vm.hostname = machine[:hostname]
            node.vm.provider "virtualbox" do |vb|
                vb.customize ["modifyvm", :id, "--memory", machine[:ram], "--cpus", machine[:cpu]]
                #vb.customize ["modifyvm", :id, "--nic2", "hostonly", "--hostonlyadapter2", ""]
                #vb.customize ["modifyvm", :id, "--nic3", "natnetwork", "--nat-network3", "ProviderNetwork1", "--nicpromisc3", "allow-all"]
              end
           end
      end
end
