
Vagrant.configure(2) do |config|
 
  config.vm.box = "ubuntu/trusty64"

  config.vm.network "forwarded_port", guest: 8080, host: 8080
  
  config.vm.network "forwarded_port", guest: 5044, host: 5044
  config.vm.network "forwarded_port", guest: 5601, host: 5601
  config.vm.network "forwarded_port", guest: 9200, host: 9200
  config.vm.network "forwarded_port", guest: 80, host: 80
  config.vm.network "forwarded_port", guest: 443, host: 443

  config.vm.network "private_network", ip: "192.168.33.11"
  
  config.vm.provider "virtualbox" do |vb|
     vb.memory = "4096"
  end

  config.vm.provision :shell, path: "scripts/local_provision.sh"
  
end
