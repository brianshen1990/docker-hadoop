FROM docker-base:0.1.1

#!/bin/bash

tar -xvf /hbase*.tar.gz -C /opt/
rm -rf /hbase*.tar.gz
ln -s /opt/hadoop-$HADOOP_VERSION/etc/hadoop /etc/hadoop
mkdir /opt/hadoop-$HADOOP_VERSION/logs
mkdir /hadoop-data