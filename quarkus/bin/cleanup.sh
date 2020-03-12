#!/bin/bash

#Clean up
oc delete all --all  -n knative-build
oc delete all --all  -n knative-serving
oc delete all --all  -n istio-system
oc delete all --all  -n quarkus-knative

oc delete project knative-build
oc delete project knative-serving
oc delete project istio-system
oc delete project quarkus-knative