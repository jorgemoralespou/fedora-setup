#!/bin/bash
#
# Docker   http://www.docker.com/
#
sudo yum -y install docker-io
sudo systemctl start docker
sudo systemctl enable docker

