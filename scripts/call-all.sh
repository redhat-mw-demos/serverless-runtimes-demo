#!/bin/bash

ROUTE_DOMAIN=$1

if [ -z "$ROUTE_DOMAIN" ]
then
  echo "Need to specify the OpenShift Route domain as the first argument to this script"
  exit -1
fi

./call-go.sh $ROUTE_DOMAIN &
./call-nodejs.sh $ROUTE_DOMAIN &
./call-python.sh $ROUTE_DOMAIN &
./call-quarkus.sh $ROUTE_DOMAIN &
./call-springboot.sh $ROUTE_DOMAIN &