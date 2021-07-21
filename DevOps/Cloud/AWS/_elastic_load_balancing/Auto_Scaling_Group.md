# Auto Scaling Group

> FREE 👉 you pay for the underlying resources




## Config

- Minimum Capacity
- Actual / Desired Capacity
- Maximum Capacity

- 🔆 Best Practices to Target
    - average CPU Usage
    - Number of requests on ELB per instance
    - Average Network In
    - Average Network Out


## Launch Template

> previous Launch Configurations

- AMI + Instance Type
- EC2 User Data
- EBS Volumes
- Security Groups
- SSH Key Pair
    

## Dynamic Scaling Policies

- Target Tracking Scaling
    - ex: average auto scaling group CPU usage to stay @ 40%
- Simple / Step Scaling
    - on CloudWatch aparm 
    - CPU > 70% 👉 add 2 units
    - CPU < 30% 👉 remove 1 unit
    
## Scheduled Actions

> based on known usage patterns

## Predictive Scaling



--- 

- Min Size / Max Size / Initial Capacity
- Network + Subnets Information
- Load Balancer Information
- Scaling Policies
    - see cloudwatch custom metrics & alarms
        - `scale-out` policies
        - `scale-in` policies
    - EC2 rules can target 
