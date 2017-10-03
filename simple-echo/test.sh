#!/bin/bash

ip=$(minikube ip)
port=$(kubectl get service scotty-deployment --output='jsonpath="{.spec.ports[0].nodePort}"')
portnr="${port%\"}"
portnr="${portnr#\"}"
address=$ip:$portnr/$1
echo $address
curl $address
