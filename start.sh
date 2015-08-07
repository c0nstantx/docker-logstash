#!/bin/bash
set -e -x
#echo "starting supervisor in foreground"
if [ ! -z "$ELASTICSEARCH_IP" ]; then
    echo "${ELASTICSEARCH_IP} elasticsearch" >> /etc/hosts
fi
supervisord -n