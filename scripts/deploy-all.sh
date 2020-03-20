#!/bin/bash

oc new-project serverless-demo

cat <<EOF | oc create -f -
apiVersion: serving.knative.dev/v1alpha1
kind: Service
metadata:
  name: quarkus
  namespace: serverless-demo
  labels:
    app.openshift.io/runtime: java
    app.kubernetes.io/part-of: Quarkus
spec:
  template:
    metadata:
      name: quarkus-serverless-v1
      labels:
        app.openshift.io/runtime: java
        app.kubernetes.io/part-of: Quarkus
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
  labels:
    app.openshift.io/runtime: spring
    app.kubernetes.io/part-of: Spring
spec:
  template:
    metadata:
      name: springboot-serverless-v1
      labels:
        app.openshift.io/runtime: spring
        app.kubernetes.io/part-of: Spring
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
  labels:
    app.openshift.io/runtime: go
    app.kubernetes.io/part-of: Go
spec:
  template:
    metadata:
      name: go-serverless-v1
      labels:
        app.openshift.io/runtime: go
        app.kubernetes.io/part-of: Go
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
  labels:
    app.openshift.io/runtime: python
    app.kubernetes.io/part-of: Python
spec:
  template:
    metadata:
      name: python-serverless-v1
      labels:
        app.openshift.io/runtime: python
        app.kubernetes.io/part-of: Python
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
  labels:
    app.openshift.io/runtime: nodejs
    app.kubernetes.io/part-of: Nodejs
spec:
  template:
    metadata:
      name: nodejs-serverless-v1
      labels:
        app.openshift.io/runtime: nodejs
        app.kubernetes.io/part-of: nodejs
    spec:
      containers:
      - image: danielon30/nodejs-serverless:latest
EOF

echo "Completed to deploy all applications.... \n"