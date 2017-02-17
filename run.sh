#!/bin/bash
sudo docker run -d --privileged --net=host --pid=host -v /:/host:ro \
        -e "GRAPHITE_SERVER=13.88.187.106" -e "GRAPHITE_PORT=20003" \
        -e "SQL_HOSTNAME=stschn" -e "SQL_USERNAME=sa" -e "SQL_PASSWORD=sa" -e "SQL_POLL_INTERVAL=1" \
        --name collectd scschneider/collectd-sqlserver

