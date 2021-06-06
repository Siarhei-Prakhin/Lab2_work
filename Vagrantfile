Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.box_check_update = false

  config.vm.define "VagrantVBoxVMhostname" 

  config.vm.hostname = "VMhostname"
  config.vm.network "forwarded_port", guest: 8080, host: 3333, host_ip: "127.0.0.1"
  config.vm.network "forwarded_port", guest: 4444, host: 4444, host_ip: "127.0.0.1"
  config.vm.provider "virtualbox" do |vb|
  vb.name = "VBoxVMhostname"
                                  end
config.vm.provision "ansible" do |ansible|
    ansible.inventory_path = "./hosts.txt"
    ansible.playbook = "playbook1.yml"
                              end
end
