# simple-node

A skeleton application for testing k8s, docker, etc.

## Docker

build with:

`docker build -t simple-node .`

run with:

`docker run simple-node -p 3000:3000`

## k8s

Deploy with:

`kubectl apply -f simple-node-pod.yaml`

The image field must be properly set to an image accessible to your k8s cluster (like in GCR or similar).