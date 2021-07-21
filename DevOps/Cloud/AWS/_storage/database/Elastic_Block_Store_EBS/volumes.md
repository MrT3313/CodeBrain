# Volumes

> characterized by size, throughput, IOPS

## Types

1. `gp2 | gp3`* : general purpose SSD volume that balances prices & performance
    - cost effective / low-latency
    - `gp3` : independently set IOPS & Throughput
    - `gp2` : IOPS & Throughput are connected
2. `io1 | io2`* : highest performance SSH volume for mission-critical, low-latency, high-throughput workloads
    - critical business applicaitons w/ sustained IOPS (or apps that need >= 16000 IOPS)
    - supports EBS multi-attach
3. `st1` : low cost HDD volume designed for frequently accessed workloads
4. `sc1` : lowest cost HDD volume designed for less frequently accessed workloads
    - cold HDD

`*` can be used as boot volumes