#!/bin/bash 

# FE deployment
kubectl apply -f fe.yaml

# FE load balancer 
kubectl apply -f frontend-service.yaml

# BE deployment
kubectl apply -f be.yaml  

# Persistent Volume Claim
kubectl apply -f pvc.yaml  

# ConfigMap for SQL Initialization Script
kubectl apply -f configmap.yaml

# PostgreSQL Deployment
kubectl apply -f deployment.yaml

# DB Service
kubectl apply -f service.yaml

# get info 
kubectl get all

# start tunnel to get external IP for the cluster 
minikube tunnel
