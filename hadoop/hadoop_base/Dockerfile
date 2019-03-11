FROM centos

ENV JAVA_HOME /usr/lib/jvm/jre-1.8.0
ENV HADOOP_VERSION 3.2.0
ENV HADOOP_URL https://www.apache.org/dist/hadoop/common/hadoop-$HADOOP_VERSION/hadoop-$HADOOP_VERSION.tar.gz
ENV HADOOP_PREFIX /opt/hadoop-$HADOOP_VERSION
ENV HADOOP_CONF_DIR /etc/hadoop
ENV MULTIHOMED_NETWORK 1       
ENV USER root           
ENV PATH $HADOOP_PREFIX/bin/:$PATH

ADD . /
RUN chmod a+x /entrypoint.sh && chmod a+x /install.sh && /usr/bin/bash /install.sh

ENTRYPOINT ["/entrypoint.sh"]
