#!/bin/bash
#
# Maven   http://maven.apache.org/download.cgi
#
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
if [ ! -f ${DIR}/functions ]
then
   echo "${DIR}/functions does not exist. This script can not run"
   exit 255
else
   . ${DIR}/functions
fi

WHAT="maven"
WHERE="/opt"
# INSTALL
install_targz $WHAT "http://apache.rediris.es/maven/maven-3/3.2.2/binaries/apache-maven-3.2.2-bin.tar.gz" $WHERE

# TODO: Create link
make_link $WHAT $WHERE

# Update /etc/profile.d/packer.sh
echo 'export M2_HOME=/opt/maven'      >  /etc/profile.d/maven.sh
echo 'export PATH=$PATH:$M2_HOME/bin' >> /etc/profile.d/maven.sh

