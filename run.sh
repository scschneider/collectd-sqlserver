#!/bin/bash
sudo docker run -d --privileged --net=host -v /:/host:ro \
        -e "GRAPHITE_SERVER=10.10.10.10" -e "GRAPHITE_PORT=2003" \
        -e "SQL_HOSTNAME=HOSTNAME" -e "SQL_USERNAME=sa" -e "SQL_PASSWORD=sa" -e "SQL_POLL_INTERVAL=1" \
        --name collectd scschneider/collectd-sqlserver

