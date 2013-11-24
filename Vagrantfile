VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  config.vm.network :private_network, ip: "192.168.33.10"

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end

  config.vm.provision "shell", path: "scripts/install/common.sh", privileged: false
  config.vm.provision "shell", path: "scripts/install/php.sh", privileged: false
  config.vm.provision "shell", path: "scripts/install/apache.sh", privileged: false
  config.vm.provision "shell", path: "scripts/install/mysql.sh", privileged: false
  config.vm.provision "shell", path: "scripts/install/dev_tools.sh", privileged: false

  config.vm.provision "shell", path: "scripts/setup/config.sh", privileged: false
  config.vm.provision "shell", path: "scripts/setup/dev.sh", privileged: false
  
  config.vm.provision "shell", inline: "rm -rf /etc/udev/rules.d/70-persistent-net.rules"
  config.vm.provision "shell", inline: "apt-get clean"
end
