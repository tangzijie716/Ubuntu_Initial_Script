#! /bin/bash

# Update APT Repository
	echo -e "\033[0;32m Updating Repository \033[0m"
		sudo apt-get update
	echo -e "\033[0;32m Repository Updated Sucessfully \033[0m"
	echo -e "\033[0;32m ======================================================= \033[0m"
	sleep 3
# Apache
	echo -e "\033[0;32m Installing Apache \033[0m"
#		sudo apt-get install -y apache2
	echo -e "\033[0;32m Apache Installed Sucessfully \033[0m"
	echo -e "\033[0;32m ======================================================= \033[0m"
	sleep 3

# JRE
    echo -e "\033[0;32m Installing JRE \033[0m"
#		sudo apt-get install -y default-jre
	echo -e "\033[0;32m JRE Installed Sucessfully \033[0m"
	echo -e "\033[0;32m ======================================================= \033[0m"
	sleep 3
	

# Docker-CE
	echo -e "\033[0;32m Installing Docker-CE \033[0m"
		sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common	
		sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
		sudo apt-key fingerprint 0EBFCD88
		sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
		sudo apt-get update
		sudo apt-get -y install docker-ce
		sudo docker run hello-world
	echo -e "\033[0;32m Docker-CE Installed Sucessfully \033[0m"
	echo -e "\033[0;32m ======================================================= \033[0m"
	sleep 3

# Jenkins
	echo -e "\033[0;32m Installing jenkins \033[0m"
		wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
		sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
		sudo apt-get update
		sudo apt-get install -y jenkins
	echo -e "\033[0;32m Jenkins Installed Sucessfully \033[0m"
	echo -e "\033[0;32m ======================================================= \033[0m"
	sleep 3

exit 0