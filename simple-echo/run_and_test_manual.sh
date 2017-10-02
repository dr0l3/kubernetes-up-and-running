kubectl create -f scotty-echo-deployment.yaml
kubectl expose deployment scotty-echo --type=NodePort
kubectl get service
minikube ip
curl <IP>:<Port>/something
