# Cloud Watch

> collection of services that help you monitor & observe your cloud resources 

- monitor and manage various metrics and configure alarm actions based on data from those metrics
- Charts 👉 everything is displayed in nice charts

## Sub Services
- CloudWatch ALARMS 👉 react in real-time to metrics / events
- CloudWatch LOGS 👉 collect, monitor, analyze and store log files
- CloudWatch METRICS 👉 visualize time seried data / collect and track key metrics
- CloudWatch EVENTS 👉 send notifications when certain events happen in your AWS


## Metrics

> Metric : a variable to monitor (CPUUtilization, NetworkIn...)
> Dimension : an attribute of a metric (instance id, environment) 👉 <= 10 / metric

- has metrics for EVERY service in AWS
- timestamped

### Custom Metrics

> PutMetricData