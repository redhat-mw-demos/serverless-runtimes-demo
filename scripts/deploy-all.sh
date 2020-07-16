#!/bin/bash

oc new-project demo-serverless

cat <<EOF | oc create -f -
apiVersion: serving.knative.dev/v1alpha1
kind: Service
metadata:
  name: quarkus
  namespace: demo-serverless
  labels:
    app.openshift.io/runtime: quarkus
    app.kubernetes.io/part-of: Quarkus
spec:
  template:
    metadata:
      name: quarkus-v1
      labels:
        app.openshift.io/runtime: quarkus
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
  namespace: demo-serverless
  labels:
    app.openshift.io/runtime: spring
    app.kubernetes.io/part-of: Spring
spec:
  template:
    metadata:
      name: springboot-v1
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
  namespace: demo-serverless
  labels:
    app.openshift.io/runtime: golang
    app.kubernetes.io/part-of: Go
spec:
  template:
    metadata:
      name: go-v1
      labels:
        app.openshift.io/runtime: golang
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
  namespace: demo-serverless
  labels:
    app.openshift.io/runtime: python
    app.kubernetes.io/part-of: Python
spec:
  template:
    metadata:
      name: python-v1
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
  namespace: demo-serverless
  labels:
    app.openshift.io/runtime: nodejs
    app.kubernetes.io/part-of: Nodejs
spec:
  template:
    metadata:
      name: nodejs-v1
      labels:
        app.openshift.io/runtime: nodejs
        app.kubernetes.io/part-of: nodejs
    spec:
      containers:
      - image: danielon30/nodejs-serverless:latest
EOF

echo "Completed to deploy all applications...."
