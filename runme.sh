#!/bin/bash

#Downloading sonar-scanner-cli  {update the latest version here}
#url: https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/
sudo wget https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-4.2.0.1873-linux.zip

#update

#Installing zip
sudo apt install zip -y > /dev/null


#Extract the file
sudo unzip -q sonar-scanner-cli-4.2.0.1873-linux.zip  > /dev/null

#deleting the zipped archive:
sudo rm sonar-scanner-cli-4.2.0.1873-linux.zip  > /dev/null





#Fixing vm.max error:
sudo sysctl -w vm.max_map_count=262144

#installing node 
sudo apt-get install nodejs  -y
sudo apt-get install npm  -y
node -v

#upgrading node version in case lower version of node is installed
sudo npm cache clean -f
sudo npm install -g n
sudo n stable

#symlinking the nodejs executable to node (otherwise node -v will not give any result)
sudo ln -s "$(which nodejs)" /usr/local/bin/node

#checking node version
node  -v

#creating dir for source code
sudo mkdir ./sonar-scanner-4.2.0.1873-linux/bin/code_directory

#Executing bash again to reflect updated node version
#exec bash

#docker
docker-compose up -d







#sudo chown -R ubuntu:ubuntu sonarqube/










