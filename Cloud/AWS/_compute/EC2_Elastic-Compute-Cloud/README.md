# ELASTIC CLOUD COMPUTE (EC2)

> Infrastructure (Virtual Machines / Servers) as a Service
> Pay as you go (hour || second)

- runs on top of physical host machines managed by AWS using virtualization technology
- `multitenancy` 👉 an EC2 instance (depending on its size) is sharing a host with other instances (aka virtual machines)
	- `hypervisor` (running on the host machine) shares / coordinates the underlying physical resources
		- isolates the virtual machines 👉 even though they are riding on the same infrastructure one EC2 is unaware of other EC2 instances on that host
- There are some instances that are available that have been optomized for specific use cases / jobs

## EC2 Instance Types

> list: https://aws.amazon.com/ec2/instance-types/
> comparte : https://instances.vantage.sh

### Naming Convention

- `m5.2xlarge`
	- `m` : instance class
	- `5` : generation of instance
	- `2xlarge` : size within the instance class

### Types

1. General Purpose
	- balance of `computer` / `memory` / `networking`
	- good for:
		1. application servers
		2. backend servers for enterprise applications
2. Compute Optimized
	- good for:
		1. Dedicated Gaming Servers
		2. Media Transcoding
		3. High Performance Computing
		4. Scientific Modeling / Machine Learning
3. Memory Optimized
	- process large datasets in memory
	- good for:
		1. high performance, relational/non-relational databases
		2. distributed web cache stores
		3. in memory databases optimized for BI intelligence
		4. real time processing of unstructured data
4. Accelerated Computing (utilizes hardware accelerators)
	- good for `floating point number calculations` / `graphics processing` / `data pattern matching`
5.  Storage Optimized
	- storage-intensive tasks that require high, sequential read and write access to large dta sets on local storage
	- good for:
		1. high frequency online transaction processing (OLTP) systems
		2. Relational & NoSql databases
		3. Data warehousing applications
		4. Distributed file system

## Cost Options

- On-Demand
	- pay for what you use
		- Linux 👉 per second (after first minute)
		- Other 👉 per hour
	- highest cost but no upfront payments
	- SHORT TERM & UNINTERUPTED workloads
	- predictable pricing
- Reserved Instances
	- Mimimum Term: 1yr
		- no upfront
		- partial upfront
		- all upfront
	- < 75% off
	- types
		- Reserved Instances: long workloads
		- Convertible Reserved Instances: long workloads w/ flexible instance types
		- Scheduled Reserved Instances: ex: every thursday from 3-6
- Spot Instances
	- short workloads
	- AWS can pull back these resources at any time (2 min warning) 👉 will lose instance
	- < 90% off
	- used for
		- batch jobs
		- data analysis
		- image processing
		- any distributed workload
- Dedicated
	- Hosts:
		- book an entire physical server w/ EC2 capacity fully dedicated to your use
		- can help with `compliance requirements` & `existing server-bound software licenses`
	- Instance:

- EXAMPLE: Hotel Room
	- On-Demand: coming and staying in the resort whenever you like 👉 pay full price
	- Reserved: planning ahead and if we plan to stay for a long time we may get a good discount
	- Spot: hotel allows people to bid for empty rooms and the highest bidder keeps the room 👉 you can get kicked out at any time
	- Dedicated: we book the entire building of the resort



