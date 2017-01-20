#!/bin/bash
sudo docker run -d --privileged --net=host --pid=host -v /:/host:ro \
        -e "GRAPHITE_SERVER=10.1.0.6" -e "GRAPHITE_PORT=2003" \
        -e "SQL_HOSTNAME=dl560g8-01-v01" -e "SQL_USERNAME=sa" -e "SQL_PASSWORD=Washington!000" -e "SQL_POLL_INTERVAL=1" \
        --name collectd stevecs38/collectd-sqlserver

