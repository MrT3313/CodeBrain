# Code Build (_managed_)

> used for building and testing the application source code

- compiles source code and runs tests
- enables continuous integration and delivery
- produced build artifacts ready to be deployed
- build instructions are defined in in code 👉 `buildspec.yml` || docker image
	- can use S3 as a 'cache' as you move through your build
- output logs to S3 & CloudWatch
- uses Docker under the hood 👉 can leverage your own Docker images
- only pay for usage
	- unlike Jenkins when your paying for the server

## buildspec.yml

- plaintext variables
- secure secrets 👉 use SSM Parameter store
- phases
	1. Install 👉 dependencies you may need for your build
	2. PreBuild 👉 final commands to execute before build
	3. Build 👉 actual build commands
	4. PostBuild 👉 finishing touches

- can be run locally (after installing Docker)
	- will give you access to better logging
	- use CodeBuild Agent

## in VPC

> CodeBuild containers are launched outside of your VPC 👉 therefore by default it cannot access resources in a VPC

- specify
	- VPC ID
	- Subnet ID
	- Security Group ID
- use case:
	- integration tests / data query / internal load balancers