#!/bin/bash


chmod +x ./scripts/*.sh

echo "Installing Node Exporter..."
bash ./scripts/install_node_exporter.sh

echo "Installing Prometheus.."
bash ./scripts/install_prometheus.sh

echo "Installing Grafana..."
bash ./scripts/grafana_server_install.sh

echo "Access Grafana-Server: http://localhost:3000"

