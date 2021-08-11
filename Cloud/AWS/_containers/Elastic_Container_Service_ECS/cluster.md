# ECS Cluster

> logical grouping of EC2 instances

- `EC2 instance` runs the `ECS agent` (Docker container)
- `ECS agent` registers the instance to the `ECS cluster`
- `EC2 instance` runs a special AMI made for ECS
    - already has Docker installed

## Questions

- ECS Cluster automatically has an auto scaling group??