#!/bin/bash

# update the app repo so it finds packages properly
apt update -y

# chef has an annoying popup during apt install that this variable fixes
DEBIAN_FRONTEND=noninteractive apt install -y -q chef

# download the chef automation
apt install -y git
git clone https://github.com/kylep/basementCloud.git

# distribute the files
cp -r chef/etc/* /etc/chef/
cp -r chef/cookbooks/bcloud /var/chef/cookbooks

# run the automation
chef-solo

echo "The curl command works! 0"
