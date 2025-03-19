#!/bin/bash 
echo "***************** Get all *********************"
kubectl get all
echo "*************** Destroying ********************"
kubectl delete service --all
kubectl delete deployment --all
echo "***************** Get all *********************"
kubectl get all
