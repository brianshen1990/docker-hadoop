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
    
    for c in `printenv | grep ${envPrefix}`; do 
        c="${c/$envPrefix\_/}"
        c="${c/=*/}"
        echo $c
        name="${c//___/-}"
        name="${name//__/@}"
        name="${name//_/.}"
        name="${name//@/_}"
        echo $name
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