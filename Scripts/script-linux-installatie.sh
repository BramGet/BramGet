#! /bin/bash
# Automatiseren software-intallatie

echo -e "\e[4;40;31m=== Bijwerken lijst beschikbare applicaties ==\e[0m"
sudo apt -y update

echo -e "\e[4;40;31m=== Algemene applicaties - git ==\e[0m"
sudo apt -y install git

echo -e "\e[4;40;31m=== Algemene applicaties - Visual Studio Code ==\e[0m"
sudo snap install --classic code

echo -e "\e[4;40;31m=== Algemene applicaties - gitkraken ==\e[0m"
sudo snap install --classic gitkraken 

echo -e "\e[4;40;31m=== Algemene applicaties - filezilla ==\e[0m"
sudo apt -y install filezilla

echo -e "\e[4;40;31m=== Algemene applicaties - MySQL-workbench ==\e[0m"
sudo snap install --classic MySQL-workbench-community

echo -e "\e[4;40;31m=== Algemene applicaties - VLC media Player ==\e[0m"
sudo apt -y install vlc

echo -e "\e[4;40;31m=== Algemene applicaties - Docker ==\e[0m"
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get -y update
sudo apt-get -y install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

