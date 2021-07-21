# Elastic Beanstalk

> developer centric view of deploying an application on AWS

- automatically handles:
	- capacity adjustment
	- load balancing
	- automatic scaling
	- application health monitoring
	- instance configuration

- 👀 FREE 👉 you pay for underlying resources used

## Components

1. Application 👉 collection of Elastic Beanstalk components (environment versions / configurations)
2. Application Version 👉 interation of your application code
3. Collection of AWS resource running an application version (only one application version at a time)
	- Tiers
		- Web Server Environment Tier
			- typical 3 tier environment
				- ELB 👉 Auto Scaling Group 👉 multiple instances in different availability zones
		- Worker Environment Tier
			- based on SQS Queue 👉 instances are the "workers" and they pull out of the available queue
			- scaled based on the number of SQS messages
			- can push messages to SQS queue from another Web Server Tier
		- supports multiple environments (_dev / test / prod_)

## Deployment Modes

1. Single Instance (development_)
2. High Availability w/ Load Balancer (_prod_)

## Deployment Options

- All at once
	- fastest deployment
	- application has downtime
	- great for quick iterations in development environment
	- no additional cost 👉 same underlying infrastructure

	```
	V1 👉 down 👉 V2
	V1 👉 down 👉 V2
	V1 👉 down 👉 V2
	V1 👉 down 👉 V2
	```
- Rolling
	- run below capacity
	- segmented transition across instances 👉 you will be running both simultaniously for a short period of tim
	- no additional cost 👉 same underlying infrastructure
	- 🔆 use for dev
	```
	V1 👉 down 👉 V2 👉 V2
	V1 👉 down 👉 V2 👉 V2
	V1 👉 V1 👉 down 👉 V2
	V1 👉 V1 👉 down 👉 V2
	```
- Rolling w/ additional batches
	- run at capacity
	- pay for new instances while they are being used
	- 🔆 use for prod
	```
	RUNNING 	V1 👉 down 	👉 V2 		👉 V2
	RUNNING 	V1 👉 down 	👉 V2 		👉 V2
	RUNNING 	V1 👉 V1 	👉 down 	👉 V2
	RUNNING 	V1 👉 V1	👉 down 	👉 V2

	NEW 		V2 👉 V2	👉 V2		👉 terminated
	NEW 		V2 👉 V2	👉 V2		👉 terminated
	```
- Immutabble
	- zero downtime
	- Steps
		1. create `Temp ASG` w/ V2
		2. Move `Temp ASG` into `Current ASG` 👉 `Current ASG now hae double the instances`
		3. Remove V1 instances from `Current ASG`
	- 🔆 best for prod


## Blue Green

- note really a "feature" of Elastic Beanstalk but it can be made to do so

## Traffic Splitting

> Canary Testing

- no down time
- pay for new instances while they are in used
- steps:
	- new application version is deployed to temporary ASG with the same capacity
	- small % of traffic is sent to temporary ASG for a configurable amount of time
	- deployment health is monitored
		- if deployment failure 👉 triggers auto rollback (very quick)
		- traffic stops going to failed temporary version

## Cloning

> clone an existing environment with the exact same configuration 👉 used for deploying a "test" version of your application

- all resources and configuration are presetved
	- load balancer type and configuration
	- RDS data base type (but the data is not presetved)
	- Env Variables