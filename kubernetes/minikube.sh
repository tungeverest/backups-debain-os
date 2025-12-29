#!/bin/bash

curl -Lo ~/.local/bin/minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
chmod +x ~/.local/bin/minikube
minikube version