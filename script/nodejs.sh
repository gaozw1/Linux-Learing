#!/bin/bash
read -p 输入版本号[10,12,14,15]： version 
curl -sL https://deb.nodesource.com/setup_${version}.x | sudo -E bash -
sudo apt-get install -y nodejs