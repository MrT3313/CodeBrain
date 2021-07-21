# Elastic Block Store (EBS)

> volume / virtual hard drives (network drive) that can attached to an EC2 instance

- only mounted to a single instance at a time but a single instance can have mane network drives attached to it
- bound to a specific availability zone
	- in order to move a volume across, you first need to take a snapshot
- 👀 if you need a high-performance hardware disk 👉 EC2 Instance Store
	- cannot be used as long term storage

## Config

- GBs
- IOPS
- Delete on Termination
	- DEFAULT: `true`
	- typically user would have a root EBS and only that root would be saved on instance termination