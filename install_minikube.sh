#!/bin/bash 


curl -fsSL https://get.docker.com -o get-docker.sh

sudo sh get-docker.sh

curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 \
  && chmod +x minikube

mkdir -p /usr/local/bin/
install minikube /usr/local/bin/


minikube start --vm-driver=none  --extra-config=kubeadm.ignore-preflight-errors=NumCPU --force --cpus 1

