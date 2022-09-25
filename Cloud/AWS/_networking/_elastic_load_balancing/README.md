# Elastic Load Balancer (ELB)

> "managed" load balancer 👉 aws guarantees that it will be working (and handeles all upgrades / maitenance / availability
> servers that forward internet traffic to multiple servers (EC2 instances) downstream

> 🚨 DO NOT USE THE CLASSIC LOAD BALANCER 🚨

- 🔆 expose a single point of access (DNS) to your application
	- separates public traffic from private traffic
- seamlessly handle failures of downstream instances
- performs regular health checks on your instances
	- tells the load balancer if the instance is healthy and if the load balancer should pass traffic to the instance
- provides SSL termination (HTTPS) for your website

## Types

1. Classic Load Balancer (v1 - old - 2009) 👉 support HTTP / HTTPS / TCP traffic
2. Application Load Balancer (v2 - new gen - 2016) 👉 HTTP / HTTPS / WebSocket
3. Network Load Balancer (v2 - new gen - 2017) 👉 TCP / TLS (secure TCP) / UDP

- internal (private)
- external (public)

## Error Types

- `4xx` 👉 client induced errors
- `5xx` 👉 application induced errors
- Load Balancer Errors 503 👉 at capacity || no registered agent

## Logs

> ELB Access Logs

- log all access requests

## Cross Zone Load Balancing

> regardless of how many EC2 instances are in what `availability zones` the lod balancer will consider all under the infrastructure when assigning traffic

## SSL / TLS

> SSL Certificate 👉 `in-flight encryption` : allows traffic between your client and your load balancer to be encrypter in transit

- `SSL` : Secure Sockets Layer 👉 used to encrypt connections
- `TLS` : Transport Layer Security 👉 newer version of ☝️
	- the default use now but people still refer to them as SSL

- Public SSL certificates are issues by Certificate Authorities (CA)
- Certificates can be managed bvy AWS Certificate Manager (ACM)
- HTTPS listener
	- default
	- add optional list
	- Server Name Indication (SNI)
		- loads multiple SSL certificates onto one web server (allowing it to serve multiple websites)
		- requires client to `indicate` the hostname of the target server in the initial SSL handshake
			- it will then find the correct certificate OR return the default one
		- works with Application Load Balancer & Network Load Balancer & Cloudfront


## Connection Draining

> the time to complete 'in-flight' requests while the instance is de-registering or unhealthy 👉 default : 300 👉 can be 0 (disables), 1-3600

- stop sending new requests to the instance
- waiting for  existing connections to complete


- naming:
	- CLB Naming : Connection Draining
	- ALB & NLB Naming : Deregistration Delay

