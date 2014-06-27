#!/bin/bash
for i in `ls installers/1*.sh`
do
  echo "Installing ${i}"
  . ${i}
done
