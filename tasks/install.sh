#!/bin/bash
#Provision podman and python
#Date: 5-July-2022
#Author Sunil Sankar
apt update -y
apt install sshpass podman python3 python3-pip gcc git cmake make gcc vim curl -y
su - vagrant -c "podman --storage-opt overlay.ignore_chown_errors=true pull docker.io/sunilsankar/docker-almalinux"
su - vagrant -c "podman --storage-opt overlay.ignore_chown_errors=true pull docker.io/sunilsankar/docker-rocky8"
pip install --upgrade pip setuptools

pip install -r /vagrant/tasks/files/requirements.txt

cp /vagrant/tasks/files/motd.sh /etc/profile.d/
\cp /vagrant/tasks/files/login.py /usr/local/lib/python3/site-packages/molecule/command/login.py
