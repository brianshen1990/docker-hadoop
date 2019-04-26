FROM centos

ENV SPARK_VERSION 2.12-2.2.0

ADD . /
ADD run.sh /run.sh
RUN chmod a+x /run.sh

EXPOSE 9092

CMD ["/run.sh"]
