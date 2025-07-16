#!/bin/bash

[Install Prometheus Package]
wget https://github.com/prometheus/prometheus/releases/download/v3.5.0/prometheus-3.5.0.linux-amd64.tar.gz
tar xvf prometheus-3.5.0.linux-amd64.tar.gz

sudo cp prometheus-3.5.0.linux-amd64/prometheus /usr/local/bin

sudo mkdir -p /etc/prometheus
sudo cp prometheus-3.5.0.linux-amd64/prometheus.yml /etc/prometheus/

sudo tee /etc/systemd/system/prometheus.service > /dev/null <<EOF
[Unit]
Description=Prometheus
After=network.target

[Service]
ExecStart=/usr/local/bin/prometheus \\
  --config.file=/etc/prometheus/prometheus.yml

[Install]
WantedBy=default.target
EOF

sudo systemctl daemon-reload
sudo systemctl enable prometheus
sudo systemctl start prometheus
sudo systemctl status prometheus

echo "Prometheus successfully initialized!"
