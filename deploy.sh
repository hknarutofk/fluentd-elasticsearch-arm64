#!/bin/bash

kubectl apply -f es-statefulset.yaml
kubectl apply -f es-service.yaml
kubectl apply -f fluentd-es-configmap.yaml
kubectl apply -f fluentd-es-ds.yaml
kubectl apply -f kibana-deployment.yaml
kubectl apply -f kibana-service.yaml
