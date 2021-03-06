FROM phusion/baseimage:0.9.19
MAINTAINER Steven Schneider <stschn@microsoft.com>

RUN apt-get update &&\
    apt-get -y upgrade &&\
    apt-get -y install collectd &&\
    apt-get -y install libdbd-freetds
    
ENV SQL_HOSTNAME empty
ENV SQL_USERNAME sa 
ENV SQL_PASSWORD nopass

ENV GRAPHITE_SERVER  127.0.0.1
ENV GRAPHITE_PORT 2003

ADD collectd.conf /etc/collectd/collectd-template.conf
#ADD processes.so /usr/lib/collectd

RUN mkdir -p /etc/service/collectd
ADD run-collectd.sh /etc/service/collectd/run
RUN chmod +x /etc/service/collectd/run


ENV HOME /root
CMD ["/sbin/my_init"]




