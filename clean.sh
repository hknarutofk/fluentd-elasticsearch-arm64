#!/bin/bash

ls *.yaml | xargs -i kubectl delete -f {}
kubectl get pvc -n kube-system | grep elasticsearch-logging | awk '{print $1}' | xargs -i kubectl delete pvc -n kube-system {}

