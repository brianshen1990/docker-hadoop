#!/bin/bash
function addPropertySpark() {
  local path=$1
  local name=$2
  local value=$3

  local entry="$name    ${value}"
  echo $entry >> $path
}

function configureSpark() {
    local path=$1
    local module=$2
    local envPrefix=$3

    local var
    local value
    
    echo "Configuring $module"
    for c in `printenv | perl -sne 'print "$1 " if m/^${envPrefix}_(.+?)=.*/' -- -envPrefix=$envPrefix`; do 
        name=`echo ${c} | perl -pe 's/___/-/g; s/__/@/g; s/_/./g; s/@/_/g;'`
        var="${envPrefix}_${c}"
        value=${!var}
        echo " - Setting $name=$value"
        addPropertySpark $path $name "$value"
    done
}


tar -xvf /spark*.tgz -C /opt/
rm -rf /spark*.tgz
ln -s /opt/spark-$SPARK_VERSION/conf /etc/spark
cp /etc/spark/spark-defaults.conf.template /etc/spark/spark-defaults.conf
configureSpark /etc/spark/spark-defaults.conf default SPARK_DEFAULT
/opt/spark-$SPARK_VERSION/sbin/start-history-server.sh
tailf /opt/spark-$SPARK_VERSION/conf/