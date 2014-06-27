#!/bin/bash
#
# ant   http://ant.apache.org/bindownload.cgi
#
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
if [ ! -f ${DIR}/functions ]
then
   echo "${DIR}/functions does not exist. This script can not run"
   exit 255
else
   . ${DIR}/functions
fi

WHAT="ant"
WHERE="/opt"
# INSTALL
install_targz $WHAT "http://ftp.cixug.es/apache/ant/binaries/apache-ant-1.9.4-bin.tar.gz" $WHERE

# TODO: Create link
make_link $WHAT $WHERE

# Update /etc/profile.d/packer.sh
echo 'export ANT_HOME=/opt/ant'        >  /etc/profile.d/ant.sh
echo 'export PATH=$PATH:$ANT_HOME/bin' >> /etc/profile.d/ant.sh
