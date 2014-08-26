#!/bin/sh

HOST=$1
ssh $HOST bash -c "'


sudo hostname $HOST
sudo echo $HOST > /etc/hostname
mkdir /home/puppet
wget http://apt.puppetlabs.com/puppetlabs-release-precise.deb
dpkg -i puppetlabs-release-precise.deb
sudo apt-get update && sudo apt-get -y install git puppet
cd /home/puppet
git remote add git git@github.com:/userwave01/cookbook
git clone git:/userwave01/cookbook
sudo puppet apply --modulepath=/home/puppet/cookbook/modules /home/puppet/cookbook/manifests/site.pp
'"
