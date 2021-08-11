# Data Volumes

> share data between instances

## Docker Volume

## Bind Mounts

- shares ephemeral storage between multiple containers part of the same ECS task
- great for "sidecar" container pattern where the sidecar can be used to send metrics/logs to other destinations (separation of concerns)

## EC2 + EFS

