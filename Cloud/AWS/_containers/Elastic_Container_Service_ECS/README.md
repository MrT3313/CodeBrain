# Elastic Container Service (ECS)

> highly scalable, high-performance container management system to run and scale containerized applications

- 🚨 load balancer can only be make on service creation

- you manage servers
- ECS manages Docker orchestration

## Launch Types

1. EC2
	- `/etc/ecs/ecs.config` must be configured
	- EC2 instance must run ECS agent 👉 to register container
	- EC2 instance can run multiple containers on the same type
		- DO NOT specify host port (only container port)
		- use Application Load Balancer w/ Port Mapping
		- EC2 instance security group must allow traffic from the ALB on all ports
	- ECS tasks can have IAM Roles to execute actions against AWS
	- Security Groups operate on instance level not task level
2. Fargate
	- serverless (no EC2 to manage)
	- AWS provisions container for us and assigns them an Elastic Network Interface (ENI)
	- containers are provisioned by the container spec (CPU / RAM)
	- tasks can have IAM Roles to execute against AWS
3. EKS


---

- define how many tasks should run and how they should be run
- ensure that the number of tasks desired is running across our fleet of EC2 instances



## Permissions / Actions

EC2 Instance Role 👉 get attached to EC2 Instance 👉 that allows your ECS agent to function correctly

### Instance Profile
	- HAS IAM ROLE that is used by ECS agent to:
		- make API calls to ECS service
		- send container log to CloudWatch Logs
		- Pull docker image from ECR

### Task Role
	- allow each tak to have specific role
	- use different roles for different ECS Services
	- defined in task definition

## Load Balancing

- Application Load Balancer 👉 dynamic port forwarding
