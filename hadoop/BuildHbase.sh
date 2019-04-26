VERSION="0.1.2"
cd hbase_baseLocal
docker build -t hbase-base:$VERSION .
cd ../hbase_master
docker build -t hbase-master:$VERSION .
cd ../hbase_regionserver
docker build -t hbase-region:$VERSION .
