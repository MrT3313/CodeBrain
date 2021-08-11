# Application Load Balancer (ALB - V2)

> great for micro services & container-based applications

- layer 7 only load balancer (HTTP)
- route to multiple HTTP application across machines (target group)
- load balancing multiple applications on the same machine (Containers / ecs)
- supports HTTPS/2 and WebSocket
- redirects (from HTTP to HTTPS)
- Root Routing 👉 routing tables to different target groups
	- `PATH` based routing
	- `hostname` based routing
	- `QueryString / Headers`
- Port Mapping
	- redirect to dynamic port in ECS

## Target Groups
	- `EC2 INSTANCES` (can be managed by Auto Scaling Group) - HTTP
	- `ECS TASKS` - HTTP
	- `Lambda Functions` - HTTP request is translated into a JSON event

## Sticky Sessions (Session Affinity)

> implement stickiness so that the same client is always redirected to the same instance behind a load balancer
> 🚨 also works w/ the Classic Load Balancer but that should not be used anymore as it is a previous generation of ELB

- cookie that has an expiration date that you control

1. Application-based Cookie
	- Custom Cookie
		- custom generation from target
		- can include any custom attributes
		- cooke name must be specified individually for each target group
		- 🚨 DONT USE THESE COOKIE NAMES 🚨
			- `AWSALB`
			- `AWSALBAPP`
			- `AWSALBTG`
	- Application Cookie
		- generrated by the load balancer
		- cookie name = `AWSALBAPP`

2. Duration-based Cookie
	- generated by the load balancer
	- cookie name:
		- `AWSALB` for ALB
		- `AWSELB` for CLB