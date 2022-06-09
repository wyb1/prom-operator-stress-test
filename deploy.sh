#!/bin/bash

for i in $(seq 1 200); do
  namespace=prom-test-$i
  helm install --create-namespace --namespace $namespace prom-$i manifests
  sleep 5
done
