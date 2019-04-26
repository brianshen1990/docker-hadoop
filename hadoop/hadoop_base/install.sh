#!/bin/bash

yum install wget java-1.8.0-openjdk-headless.x86_64 -y
cd /root
wget "$HADOOP_URL"
tar -xvf /root/hadoop*.tar.gz -C /opt/
rm -rf /root/hadoop*.tar.gz
ln -s /opt/hadoop-$HADOOP_VERSION/etc/hadoop /etc/hadoop
mkdir /opt/hadoop-$HADOOP_VERSION/logs
mkdir /hadoop-data