# Elastic File System

> managed Network File System (NFS) that can be mounted to many EC2 instances in multiple availability zones

| Summary Category 	| Summary Description 	| 
| --- 			   	| --- 				 	|  
| Payment Type 	   	| Pay As You Go       	| 

----

- block storage w/ local file system to organize files
- scales automatically (unlike EBS)
- encryption at rest using KMS
- good for
	- content management
	- web serving
	- data sharing
	- wordpress
- 🚨 only works on Linux based AMIs
- 👀 only pay for what you actually USE
	- vs EBS where you pay for how much you have provisioned
- EFS Modes
	- Performance Mode
		1. General Purpose 👉 latency-sensitive use cases
		2. Max I/O 👉 higher latency, throughput, highly parallel
	- Throughput Mode
		1. Bursting
			- throughput scales w/ filesystem size
		2. Provisioned: set throughput regardless of storage size
	- Storage Tiers (lifecycle management feature)
		- move file after `x` days