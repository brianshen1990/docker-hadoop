FROM centos

ENV JAVA_HOME /usr/lib/jvm/java-1.8.0-openjdk
ENV HBASE_VERSION 2.1.3
ENV HBASE_PREFIX /opt/hbase-$HBASE_VERSION
ENV HBASE_CONF_DIR /etc/hbase
ENV USER root
ENV PATH $HBASE_PREFIX/bin/:$PATH

ADD . /
RUN chmod a+x /entrypoint.sh && chmod a+x /install.sh && /usr/bin/bash /install.sh

ENTRYPOINT ["/entrypoint.sh"]