#!/bin/bash

#author: ankit
sudo echo ""
tput bold
echo -e "\n\n\tGrab a cup of Coffee while we're setting up SonarQube"
echo -e "\t~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ \n"



tput setaf 3
echo -e "\n\nDownloading sonar-scanner-cli\n"  
#{update the latest version here}
#url: https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/
sudo wget https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-4.2.0.1873-linux.zip

echo -e "\n\nupdate apt cache\n"
sudo apt-get update

echo -e "\n\nInstalling zip\n"
sudo apt install zip -y > /dev/null


echo -e "\n\nExtract the file\n"
sudo unzip -q sonar-scanner-cli-4.2.0.1873-linux.zip 

echo -e "\n\ndeleting the zipped archive:\n"
sudo rm sonar-scanner-cli-4.2.0.1873-linux.zip  > /dev/null


echo -e "\n\nFixing vm.max count size:\n"
sudo sysctl -w vm.max_map_count=262144

echo -e "\n\ninstalling node \n"
sudo apt-get install nodejs  -y
sudo apt-get install npm -y 
node -v

echo -e "\n\nupgrading node version in case lower version of node is installed\n"
sudo npm cache clean -f
sudo npm install -g n
sudo n stable

echo -e "\n\nsymlinking the nodejs executable to node (otherwise node -v will not give any result)\n"
sudo ln -s "$(which nodejs)" /usr/local/bin/node

echo -e "\n\nchecking node version (In case you're not seeing the updated version just logout and login again)\n"
node  -v

echo -e "\n\ncreating dir for source code\n"
sudo mkdir ./sonar-scanner-4.2.0.1873-linux/bin/code_directory


echo -e "\n\n Firing Up Docker Engine For SonarQube \n"
docker-compose up -d


echo -e "\n\nFixing ownership \n"
#sudo chown -R ubuntu:ubuntu ../sonarqube/










