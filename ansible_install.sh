#!/bin/bash

# install ubuntu required packages
echo "install ubuntu required packages .."
sudo apt-get -y install python-virtualenv python-pip python-dev build-essential libssl-dev libffi-dev 

# create new folder for ansible project
echo "create new folder for ansible project"
mkdir ansible

# move to new created folder
echo "move to new created folder"
cd ansible

# create virtualenv
echo "create virtualenv"
virtualenv -p $(which python) venv

# activate new virtual env
echo "activate new virtual env"
source venv/bin/activate

# install ansible using pip
echo "install ansible using pip"
pip install ansible

# save requirements file
echo "save requirements file"
pip freeze > requirements

# deactivate venv
echo "deactivate venv"
deactivate

# create sample inventory file, containing only localhost host :)
echo "create sample inventory file, containing only localhost host :)"
echo "local ansible_host=127.0.01 ansible_port=22 ansible_user=$USER ansible_connection=ssh" > hosts

