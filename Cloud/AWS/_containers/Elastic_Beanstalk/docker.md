# Elastic Beanstalk - Docker

> run application as a single docker container

- 👀 EB w/ a single docker container DOES NOT USE ECS

- Provide Either
    - Dockerfile 👉 EB will build and run the Docker container
    - Docerrun.aws.json (v1) 👉 describe where *alread built* Docker image is
        - Image
        - Ports
        - Volumes
        - Logging
        - ...
    
## Multi Docker Container

- images must be pre-built and stored in ECR 
- creates
    - ECS Cluster
    - EC2 instance 👉 configured to use the ECS clister
    - Load Balancer 👉 in high availability mode
    - task definitions & executions
    
- required a `Dockerrun.aws.json` (v2) as the root of soruce code
- `Dockerrun.aws.json` is used to generate the ECS task definition