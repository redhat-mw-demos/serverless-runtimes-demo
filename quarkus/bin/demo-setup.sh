#!/bin/bash
                                              
oc new-project quarkus-knative --display-name='Quarkus on Knative Demo'
oc adm policy add-scc-to-user privileged -z quarkus-knative
oc adm policy add-scc-to-user anyuid -z quarkus-knative
oc adm policy add-scc-to-user privileged -z default 
oc adm policy add-scc-to-user anyuid -z default

oc new-build quay.io/quarkus/ubi-quarkus-native-binary-s2i:19.2.1 --binary --name=serverless -l app=serverless
oc start-build serverless --from-file target/*-runner --follow
