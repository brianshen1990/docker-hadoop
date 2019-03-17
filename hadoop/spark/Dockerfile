FROM docker-base:0.1.1

ENV SPARK_VERSION 2.4.0-bin-hadoop2.7

ADD . /
ADD run.sh /run.sh
RUN chmod a+x /run.sh

EXPOSE 18080

CMD ["/run.sh"]
