#!/bin/bash

HERE=$(pwd)

docker run -d \
  --name=prometheus \
  -p 9090:9090 \
  -v $HERE:/etc/prometheus \
  prom/prometheus

docker run -d \
  --name=grafana \
  -p 3000:3000 \
  grafana/grafana-enterprise
