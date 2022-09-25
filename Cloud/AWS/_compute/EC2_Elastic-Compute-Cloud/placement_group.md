# Placement Group

> control over the EC2 instance placement strategy

## Strategies

- Cluster 👉 clusters instances into a low-latency group in a single AZ
- Spread  👉 spread instances across underlying hardware (<=7 instances / group / AZ)
- Partition 👉 spread instances across many different partitions

