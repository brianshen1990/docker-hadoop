#!/bin/bash

/opt/hbase-$HBASE_VERSION/bin/hbase-daemon.sh start rest -p 60080
/opt/hbase-$HBASE_VERSION/bin/hbase master start
