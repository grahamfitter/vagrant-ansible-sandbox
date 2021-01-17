Vagrant.configure("2") do |config|

  # Nodes to deploy using Ansible
  (1..2).each do |i|
    node_name = "node-#{i}"
    config.vm.define node_name do |machine|
      machine.vm.box = "centos/8"
      machine.vm.hostname = "#{node_name}.local"
      machine.vm.network "private_network", ip: "192.168.99.#{i+100}"
    end
  end

  # Main Ansible control host
  ansible_controller_name = "ansible-controller"
  config.vm.define ansible_controller_name, primary: true do |machine|
    #machine.vm.box = "ubuntu/xenial64" # 16.04
    machine.vm.box = "ubuntu/bionic64" # 18.04
    machine.vm.hostname = "#{ansible_controller_name}.local"
    machine.vm.network "private_network", ip: "192.168.99.2"

    # Install Ansible directly, doesn't cause it to run
    machine.vm.provision "shell", path: "vagrant/install_ansible.sh"

#    machine.vm.provision "ansible_local" do |ansible|
#      ansible.playbook = "playbook.yml"
#      ansible.verbose = true
#    end

  end

end
