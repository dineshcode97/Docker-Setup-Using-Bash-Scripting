#!/usr/bin/bash

cat << EOF | sudo tee /etc/yum.repos.d/docker.repo
[docker]
baseurl=https://download.docker.com/linux/centos/7/x86_64/stable/
gpgcheck=0
EOF
echo "Docker Repo Created"
sudo yum install docker-ce --nobest -y
echo "Docker Installed"
sudo systemctl start docker.service
echo "Docker Service Started"
sudo systemctl enable docker.service
echo "Docker Service Enabled Permanently"
