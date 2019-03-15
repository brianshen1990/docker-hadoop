cd hadoop_baseLocal
docker build -t docker-base:0.1.1 .
cd ../hadoop_datanode_nodemanager
docker build -t datamanager:0.1.1 .
cd ../hadoop_namenode
docker build -t namenode:0.1.1 .
cd ../hadoop_resourcemanager
docker build -t resourcemanager:0.1.1 .
cd ../hadoop_historyserver
docker build -t historyserver:0.1.1 .