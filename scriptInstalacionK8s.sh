#!/bin/bash

#Actualiza dependencias y baja paquetes iniciales necesarios
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl

#Baja llave pública de Google Cloud
sudo curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg

#Agrega repositorios de Kubernetes a APT
echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list

#Últimas actualizaciones e instalaciones
sudo apt-get update
sudo apt-get install -y kubelet kubeadm kubectl
sudo apt-mark hold kubelet kubeadm kubectl
