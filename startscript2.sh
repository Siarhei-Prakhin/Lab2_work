#!/bin/bash

#------------------------ Resetting the variables:)----------------------
chmod 777 ./private_key
rm ./private_key
sudo ssh-keygen -f "/root/.ssh/known_hosts" -R "[127.0.0.1]:2222"

#----------------------- Virtual environment creation-----------------------
#vagrant init
vagrant up

#----------------------Adding GitHub credentials and job to VM_Jenkins
#java -jar jenkins-cli.jar -auth admin:admin -s http://127.0.0.1:3333/ create-credentials-by-xml system::system::jenkins _ < credential.xml
#java -jar jenkins-cli.jar -auth admin:admin -s "http://127.0.0.1:3333" create-job Lab2 < job_template.xml

cp ./.vagrant/machines/VagrantVBoxVMhostname/virtualbox/private_key ./
chmod 444 ./private_key
vagrant status
