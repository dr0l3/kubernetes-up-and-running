#!/usr/bin/env bash
kubectl create -f scotty-echo-deployment.yaml
kubectl expose deployment scotty-echo --type=NodePort
