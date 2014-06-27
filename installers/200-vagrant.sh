#!/bin/bash
#
# Vagrant    http://www.vagrantup.com/downloads.html
#
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
if [ ! -f ${DIR}/functions ]
then
   echo "${DIR}/functions does not exist. This script can not run"
   exit 255
else
   . ${DIR}/functions
fi

# INSTALL
install_rpm "vagrant" "https://dl.bintray.com/mitchellh/vagrant/vagrant_1.6.3_x86_64.rpm"
