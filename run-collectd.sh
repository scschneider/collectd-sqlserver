#!//bin/bash

cp /etc/collectd/collectd-template.conf /etc/collectd/collectd.conf
sed -i'' -e "s/##SQL_HOSTNAME##/${SQL_HOSTNAME}/" /etc/collectd/collectd.conf
sed -i'' -e "s/##SQL_USERNAME##/${SQL_USERNAME}/" /etc/collectd/collectd.conf
sed -i'' -e "s/##SQL_PASSWORD##/${SQL_PASSWORD}/" /etc/collectd/collectd.conf
sed -i'' -e "s/##GRAPHITE_SERVER##/${GRAPHITE_SERVER}/" /etc/collectd/collectd.conf
sed -i'' -e "s/##GRAPHITE_PORT##/${GRAPHITE_PORT}/" /etc/collectd/collectd.conf

# Run collectd in foreground mode
/usr/sbin/collectd -C /etc/collectd/collectd.conf -f 
