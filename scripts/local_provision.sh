sudo sed -i -e 's,    SendEnv LANG LC_*,#   SendEnv LANG LC_*,g' /etc/ssh/ssh_config
sudo service ssh restart
sudo apt-get update
sudo apt-get install -y language-pack-en
sudo update-locale LC_ALL=en_US.UTF-8
sudo update-locale LANGUAGE=en_US.UTF-8
sudo update-rc.d chef-client disable
sudo update-rc.d puppet disable

#Docker install
sudo apt-get -y remove docker docker-engine docker.io
sudo apt-get update
sudo apt-get -y install docker
sudo apt-get update
sudo apt-get -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get -y install docker-ce
sudo apt-get -y install dos2unix

#Docker compose install
sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

#Java install
sudo apt-get -y purge openjdk-\* icedtea-\* icedtea6-\*
sudo add-apt-repository ppa:openjdk-r/ppa -y
sudo apt-get update
sudo apt-get -y install openjdk-8-jdk
sudo dpkg --purge --force-depends ca-certificates-java
sudo apt-get -y install ca-certificates-java
sudo apt-get -y install docker-ce=18.06.1~ce~3-0~ubuntu

# Start containers
sudo su -
cd /vagrant/
docker-compose up -d





