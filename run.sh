#!/bin/bash

sudo docker run -d --privileged --net=host \
	-e "GRAPHITE_SERVER=${GRAPHITE_SERVER}" -e "GRAPHITE_PORT=${GRAPHITE_PORT}" \
	-e "SQL_USERNAME=${SQL_USERNAME}" -e "SQL_PASSWORD=${SQL_PASSWORD}" \
	--name collectd collectd 
