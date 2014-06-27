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

WHAT="yed"
WHERE="/opt"
# INSTALL
install_zip $WHAT "http://www.yworks.com/products/yed/demo/yEd-3.12.2.zip" $WHERE

# TODO: Create link
make_link $WHAT $WHERE
