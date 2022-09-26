# Fargate 
_technically a COMPUTE resource_

> Serverless compute platform for containers
> Supports ECS or EKS

- 👀 DONT: provision EC2 instances
- INSTEAD:
	- create task definition
	- let AWS run the containers for you
	- to scale 👉 increase task number
	- 👀 NO MORE EC2 to worry about!