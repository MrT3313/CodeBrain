# Cloud Watch

> monitor and manage various metrics and configure alarm actions based on data from those metrics

- Metrics
	- collect and track key metrics
- Logs 👉 collect, monitor, analyze and store log files
- Events 👉 send notifications when certain events happen in your AWS
- Alarms 👉 react in real-time to metrics / events
- Charts 👉 everything is displayed in nice charts

## Metrics

> Metric : a variable to monitor (CPUUtilization, NetworkIn...)
> Dimension : an attribute of a metric (instance id, environment) 👉 <= 10 / metric

- has metrics for EVERY service in AWS
- timestamped

### Custom Metrics

> PutMetricData