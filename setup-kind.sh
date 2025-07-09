#!/bin/bash
echo "Creating Kubernetes cluster with 1 master + 2 workers..."
kind create cluster --config kind-config.yaml

echo "Waiting for nodes to be ready..."
kubectl wait --for=condition=Ready nodes --all --timeout=180s

echo "Done! Listing nodes:"
kubectl get nodes
