VERSION="0.1.2"
cd hadoop_baseLocal
docker build -t docker-base:$VERSION .
cd ../hadoop_datanode_nodemanager
docker build -t datamanager:$VERSION .
cd ../hadoop_namenode
docker build -t namenode:$VERSION .
cd ../hadoop_resourcemanager
docker build -t resourcemanager:$VERSION .
cd ../hadoop_historyserver
docker build -t historyserver:$VERSION .