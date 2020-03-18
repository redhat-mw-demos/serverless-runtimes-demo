#!/bin/bash

oc new-project serverless-demo

cat <<EOF | oc create -f -
apiVersion: serving.knative.dev/v1alpha1
kind: Service
metadata:
  name: quarkus
  namespace: serverless-demo
spec:
  template:
    metadata:
      name: quarkus-serverless-v1
    spec:
      containers:
      - image: danielon30/quarkus-serverless:latest
EOF

cat <<EOF | oc create -f -
apiVersion: serving.knative.dev/v1alpha1
kind: Service
metadata:
  name: springboot
  namespace: serverless-demo
spec:
  template:
    metadata:
      name: springboot-serverless-v1
    spec:
      containers:
      - image: danielon30/springboot-serverless:latest
EOF

cat <<EOF | oc create -f -
apiVersion: serving.knative.dev/v1alpha1
kind: Service
metadata:
  name: go
  namespace: serverless-demo
spec:
  template:
    metadata:
      name: go-serverless-v1
    spec:
      containers:
      - image: danielon30/go-serverless:latest
EOF

cat <<EOF | oc create -f -
apiVersion: serving.knative.dev/v1alpha1
kind: Service
metadata:
  name: python
  namespace: serverless-demo
spec:
  template:
    metadata:
      name: python-serverless-v1
    spec:
      containers:
      - image: danielon30/python-serverless:latest
EOF

cat <<EOF | oc create -f -
apiVersion: serving.knative.dev/v1alpha1
kind: Service
metadata:
  name: nodejs
  namespace: serverless-demo
spec:
  template:
    metadata:
      name: nodejs-serverless-v1
    spec:
      containers:
      - image: danielon30/nodejs-serverless:latest
EOF

echo "Completed to deploy all applications.... \n"