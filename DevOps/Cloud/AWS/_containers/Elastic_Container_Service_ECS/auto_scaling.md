# Auto Scaling

> CPU / RAM is tracked in CloudWatch at ECS Service level

- types
    - Target Tracking 👉 through CloudWatch metric
    - Step Scaling 👉 based on CloudWatch alarms
    - Scheduled Scaling 👉 based on predictable changes
    
- ECS service scaling (task level) != EC2 Auto Scaling (instance level)
- Fargate Auto Scaling is much easier to setup due to serverless nature

## Cluster Capacity Provider 

> determines the infrastructure that a task runs on

- Fargate 👉 capacity providers added automatically
- ECS on EC2 👉 need to associate the capacity provider with an auto-scaling group