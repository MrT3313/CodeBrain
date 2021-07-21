# Elastic Container Registry (ECR)

> amazon version of Dockerhub

- controlled through IAM policies
- login
	- v1:
		- psudo: run the output from get-login command
		- command`$(aws ecr get-login --no-include-email --region us-east-1)`
	- v2 :
		- psudo: pipe the output into docker command
		- command`aws exr get-login-password --region us-ease-1 | docker login --username AWS --password-stdin | 12345679.dkr.ecr.us-east-1 | .amazon.aws.com | `

---

## Parts

- Cluster
	- Service
		- Task Definition
			- Container Definition

## Permissions / Policies

