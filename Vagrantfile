require 'fileutils'

Vagrant.configure("2") do |config|

  # Write Ansible inventory file
  ansible_inventory_dir = ".vagrant/ansible"
  ansible_inventory_file = "#{ansible_inventory_dir}/inventory"
  FileUtils.mkdir_p(ansible_inventory_dir)
  File.write(ansible_inventory_file, "# Generated by Vagrant\n")

  # Nodes to deploy using Ansible
  (1..2).each do |i|
    node_name = "node-#{i}"
    node_ip = "192.168.99.#{i+100}"
    node_key_path = "/vagrant/.vagrant/machines/#{node_name}/virtualbox/private_key"

    File.write(ansible_inventory_file, "#{node_name}\tansible_host=#{node_ip}\tansible_ssh_private_key_file=#{node_key_path}\n", mode: "a")

    config.vm.define node_name do |machine|
      machine.vm.box = "centos/8"
      machine.vm.hostname = "#{node_name}.local"
      machine.vm.network "private_network", ip: node_ip
      machine.vm.disk :disk, size: "20GB", primary: true
      machine.vm.synced_folder ".", "/vagrant", type: "nfs"
    end
  end

  # Main Ansible control host
  ansible_controller_name = "ansible-controller"
  config.vm.define ansible_controller_name, primary: true do |machine|
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
