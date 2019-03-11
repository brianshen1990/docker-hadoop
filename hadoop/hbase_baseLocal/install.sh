#!/bin/bash

yum install perl java-1.8.0-openjdk-headless.x86_64 nc -y
tar -xvf /hbase*.tar.gz -C /opt/
rm -rf /hbase*.tar.gz
ln -s /opt/hbase-$HBASE_VERSION/conf /etc/hbase
mkdir /opt/hbase-$HBASE_VERSION/logs
mkdir /hbase-data