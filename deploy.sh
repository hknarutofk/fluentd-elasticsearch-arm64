#!/bin/bash

kubectl apply -f es-statefulset.yaml
kubectl apply -f es-service.yaml
kubectl apply -f fluentd-es-configmap.yaml
kubectl apply -f fluentd-es-ds.yaml

while [ true ]; do
	esReady=`kubectl get statefulset -n kube-system | grep elasticsearch\-logging | awk '{print $2}' `
	if [ "2/2" = "$esReady" ]; then
	    kubectl apply -f kibana-deployment.yaml
            kubectl apply -f kibana-service.yaml
            break 
	else
            sleep 5
	fi
done

