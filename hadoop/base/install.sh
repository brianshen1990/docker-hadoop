#!/bin/bash

yum install epel-release vim wget yum java-1.8.0-openjdk-headless.x86_64 java-devel -y
cd /root
wget "$HADOOP_URL"
tar -xvf /root/hadoop*.tar.gz -C /opt/
rm -rf /root/hadoop*.tar.gz
ln -s /opt/hadoop-$HADOOP_VERSION/etc/hadoop /etc/hadoop
mkdir /opt/hadoop-$HADOOP_VERSION/logs
mkdir /hadoop-data