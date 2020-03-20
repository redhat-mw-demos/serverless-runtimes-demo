#!/bin/bash

ROUTE_DOMAIN=$1

if [ -z "$ROUTE_DOMAIN" ]
then
  echo "Need to specify the OpenShift Route domain as the first argument to this script"
  exit -1
fi

start_time=$SECONDS
curl http://python.serverless-demo.${ROUTE_DOMAIN}/api/python
end_time=$SECONDS

elapsed_time_sec=$(( end_time - start_time ))
elapsed_time_min=$(printf '%dh:%dm:%ds\n' $(($elapsed_time_sec/3600)) $(($elapsed_time_sec%3600/60)) $(($elapsed_time_sec%60)))
echo -e "\n ===> $elapsed_time_min seconds elapsed \n"