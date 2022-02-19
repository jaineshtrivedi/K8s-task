#!bin/bash
sudo snap install microk8s --classic
sudo snap install microk8s --classic --channel=1.18/stable
sudo ufw allow in on cni0 && sudo ufw allow out on cni0
sudo ufw default allow routed
microk8s enable dns dashboard storage
microk8s disable dns dashboard storage
microk8s status