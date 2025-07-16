#Basic Linux Virtual Machine Monitoring

Monitoring stack with **Prometheus** &&  **Node Exporter** && **Grafana**


## Features

- Node Exporter collects system metrics;
- Metrics aggregation via Prometheus;
- Dashboards in Grafana;
- One-command setup using `run.sh`;
- Configurable via `.env` file.

--


## Configuration

Edit the `.env` file to configure user name

```
NODE_EXPORTER_USER=YOURNAME
```

#RUN

1.Give execution permission

chmod +x run.sh

2.Run the full setup

./run.sh

3.Access:

Grafana: http://localhost:3000
Prometheus: http://localhost:9090
Node Exporter: http://localhost:9100/metrics

Grafana login credentials:
name: admin
pass: admin
