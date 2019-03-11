#!/bin/bash

yum install perl java-1.8.0-openjdk-headless.x86_64 -y
tar -xvf /hadoop*.tar.gz -C /opt/
rm -rf /hadoop*.tar.gz
ln -s /opt/hadoop-$HADOOP_VERSION/etc/hadoop /etc/hadoop
mkdir /opt/hadoop-$HADOOP_VERSION/logs
mkdir /hadoop-data