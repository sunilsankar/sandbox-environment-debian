#!/bin/bash
apt update -y
apt install sshpass podman python3 python3-pip gcc git cmake make gcc vim curl -y

pip install --upgrade pip setuptools

pip install -r /vagrant/tasks/files/requirements.txt

cp /vagrant/tasks/files/motd.sh /etc/profile.d/
\cp /vagrant/tasks/files/login.py /usr/local/lib/python3.9/site-packages/molecule/command/login.py
