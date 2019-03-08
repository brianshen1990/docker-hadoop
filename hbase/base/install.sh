#!/bin/bash

yum install epel-release vim wget yum java-1.8.0-openjdk-headless.x86_64 java-devel -y
export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk/
export HADOOP_VERSION=3.2.0
export HADOOP_URL=https://www.apache.org/dist/hadoop/common/hadoop-$HADOOP_VERSION/hadoop-$HADOOP_VERSION.tar.gz
cd /root
wget "$HADOOP_URL"
tar -xvf /root/hadoop*.tar.gz -C /opt/
rm -rf /root/hadoop*.tar.gz
ln -s /opt/hadoop-$HADOOP_VERSION/etc/hadoop /etc/hadoop
mkdir /opt/hadoop-$HADOOP_VERSION/logs
mkdir /hadoop-data
export HADOOP_PREFIX=/opt/hadoop-$HADOOP_VERSION
export HADOOP_CONF_DIR=/etc/hadoop
export MULTIHOMED_NETWORK=1       
export USER=root           
export PATH=$HADOOP_PREFIX/bin/:$PATH