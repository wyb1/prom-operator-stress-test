#!/bin/bash

for i in $(seq 1 200); do
  namespace=prom-test-$i
  kubens $namespace
  helm delete prom-$i manifests
  sleep 1
done
