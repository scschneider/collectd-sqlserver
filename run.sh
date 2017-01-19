#!/bin/bash

sudo docker run -d --privileged --net=host --pid=host -v /:/host:ro \
	-e "GRAPHITE_SERVER=127.0.0.1" -e "GRAPHITE_PORT=2003" \
	-e "SQL_HOSTNAME=MyHostName" -e "SQL_USERNAME=MyUser" -e "SQL_PASSWORD=MyPassword" -e "SQL_POLL_INTERVAL=5" \
	--name collectd stevecs38/collectd-sqlserver
