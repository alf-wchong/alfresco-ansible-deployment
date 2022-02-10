#!/bin/bash
mkdir ~/.ssh
cd ~/.ssh/
sudo cp ~/../centos/.ssh/authorized_keys ~/.ssh/.
sudo chown alfadmin:alfadmin ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys
chmod 700 ~/.ssh
