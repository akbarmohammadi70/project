Vagrant.configure("2") do |config|
  config.vm.define "master" do |master|
    master.vm.box = "ubuntu/bionic64"
    master.vm.hostname = 'master'
    master.vm.box_url = "ubuntu/bionic64"

    master.vm.network :private_network, ip: "192.168.56.101"
    
  config.vm.provision "shell" do |s|
    ssh_pub_key = File.readlines("/home/vagrant/.ssh/id_rsa.pub").first.strip
    s.inline = <<-SHELL
      echo "192.168.56.101 master" >> /etc/hosts
      echo "192.168.56.102 node1" >> /etc/hosts
      echo "192.168.56.103 node2" >> /etc/hosts
      echo #{ssh_pub_key} >> /home/vagrant/.ssh/authorized_keys


    SHELL
  

    master.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 4096]

      v.customize ["modifyvm", :id, "--name", "master"]
    end
  end
 end

   config.vm.define "node1" do |node1|
    node1.vm.box = "ubuntu/bionic64"
    node1.vm.hostname = 'node1'
    node1.vm.box_url = "ubuntu/bionic64"

    node1.vm.network :private_network, ip: "192.168.56.102"

  config.vm.provision "shell" do |s|
    ssh_pub_key = File.readlines("/home/vagrant/.ssh/id_rsa.pub").first.strip
    s.inline = <<-SHELL
      echo "192.168.56.101 master" >> /etc/hosts
      echo "192.168.56.102 node1" >> /etc/hosts
      echo "192.168.56.103 node2" >> /etc/hosts
      echo #{ssh_pub_key} >> /home/vagrant/.ssh/authorized_keys


    SHELL
  

    node1.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 4096]

      v.customize ["modifyvm", :id, "--name", "node1"]
    end
  end
 end

   config.vm.define "node2" do |node2|
    node2.vm.box = "ubuntu/bionic64"
    node2.vm.hostname = 'node2'
    node2.vm.box_url = "ubuntu/bionic64"

    node2.vm.network :private_network, ip: "192.168.56.103"

  config.vm.provision "shell" do |s|
    ssh_pub_key = File.readlines("/home/vagrant/.ssh/id_rsa.pub").first.strip
    s.inline = <<-SHELL
      echo "192.168.56.101 master" >> /etc/hosts
      echo "192.168.56.102 node1" >> /etc/hosts
      echo "192.168.56.103 node2" >> /etc/hosts
      echo #{ssh_pub_key} >> /home/vagrant/.ssh/authorized_keys

    SHELL
      

    node2.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 2048]

      v.customize ["modifyvm", :id, "--name", "node2"]
    end
  end
 end

 config.vm.define "kafka" do |kafka|
  kafka.vm.box = "ubuntu/bionic64"
  kafka.vm.hostname = 'kafka'
  kafka.vm.box_url = "ubuntu/bionic64"

  kafka.vm.network :private_network, ip: "192.168.56.104"

config.vm.provision "shell" do |s|
  ssh_pub_key = File.readlines("/home/vagrant/.ssh/id_rsa.pub").first.strip
  s.inline = <<-SHELL
    echo #{ssh_pub_key} >> /home/vagrant/.ssh/authorized_keys
    echo "nameserver 178.22.122.100" > /etc/resolv.conf 

  SHELL


  kafka.vm.provider :virtualbox do |v|
    v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    v.customize ["modifyvm", :id, "--memory", 2048]

    v.customize ["modifyvm", :id, "--name", "kafka"]
  end
end
end


end