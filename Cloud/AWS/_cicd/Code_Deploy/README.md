# Code Deploy (_managed service_)

> used to deploy application automatically to many EC2 instances (that are not managed by beanstalk)

- Primary Components
	- Application 👉 unique name
	- Compute Platform 👉 EC2 / Lambda
	- Deployment Configuration
		- EC2 / On-Premise 👉 specify the min number of healthy instances for the deployment
		- AWS Lambda 👉 specify how traffic is routed to your updated Lambda function versions
	- Deployment Group 👉 group fot tagged instances (allows to deploy gradually)
	- Deployment Type 👉 in-place || blue/green
	- IAM Instance Profile 👉 need to give Ec@ the permissions to pull from S3 / GitHub
	- Application Revision 👉 application code + `appspec.yml`
	- Service Role 👉 role for CodeDeploy to perform what it needs
	- Target Revision 👉 target deployment application version
- 🚨 does NOT provision resources
- each EC2 must be running the CodeDeploy Agent 👉 agent is continuously pulling AWS CodeDeploy for work to do
- steps
	- code deploy sends `appspec.yml`
	- application is pulled from GitHub || S3
	- EC2 runs deployment instructions
	- CodeDeploy Agent 👉 reports success / failure of deployment on instance
- alternative deployment tools
	1. Ansible
	2. Terraform
	4. Chef
	5. Puppet


## appspec.yml

- file section 👉 how to source a copy from S3 / Github to file system
- hooks 👉 set of instructions to do to deploy new versions (hooks can have timeouts)
	- hook order:
		1. ApplicationStop
		2. DownloadBundle
		3. BeforeInstall
		4. AfterInstall
		5. ApplicationStart
		6. ValidateService

## deployment

- Config
	- one at a time 👉 one instance at a time
		- one instance fails 👉 deployment stops
	- half at a time
	- all at once 👉 quick but no healthy host, downtime: good for dev

- failures
	- instances stay in "failed state"
	- new deployments will be directed at the failed instances
	- rollback
		- redeploy old deployment
		- enable automated rollback for failures

- Deployment Targets / Deployment Group
	- set of ec2 instances w/ tags
	- directly to an ASG
	- Mix og ASG / Tags so you can build deployment degments
	- Customization in scropt w/ DEPLOYMENT_GROUPNAME environment variables

## EC2 deployment

- define how to deploy using the `appspec.yml`
- will do `in-place` update to your fleet of EC2 instances
- can use hooks to verify the deployment after each deployment phase

# Rollback

	- automatic rollback options
		- deployment fails
		- on alarm thresholds
	- on rollback it deploys the most recent healthy build