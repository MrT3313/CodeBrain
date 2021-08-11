# NGINX

- part server part load balancer
- obfuscates the ports from the users (single entry point) and then sends traffic to appropriate sup port

## Best Practices

- run as few commands as possible as a `root user`
	- [NGINX Docker Image - runs as UNprivileged user](https://hub.docker.com/r/nginxinc/nginx-unprivileged)

---

- EX:
	- Servers currently running application
		- 3000
		- 4000
		- 5000
		- ...scan scale up and down as needed without changing user entry
	- NGINX main port
		- 443