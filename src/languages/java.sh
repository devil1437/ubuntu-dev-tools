#!/usr/bin/env bash

echo "Installing and configuring Java 10..."
add-apt-repository ppa:linuxuprising/java
apt-get update
apt-get install -y oracle-java10-installer oracle-java10-set-default
