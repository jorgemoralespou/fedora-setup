#!/bin/bash
#
# Packer   http://www.packer.io/downloads.html
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
install_zip "packer" "https://dl.bintray.com/mitchellh/packer/0.6.0_linux_amd64.zip" "/opt/packer"

# Update /etc/profile.d/packer.sh
echo 'export PATH=/usr/local/packer:$PATH' > /etc/profile.d/packer.sh

