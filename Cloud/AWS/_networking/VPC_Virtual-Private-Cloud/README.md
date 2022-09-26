# Virtual Private Cloud (VPC)

> a logically separated private network to deploy your resources (think fence)

- a VPC network is subdivided into public & private `subnets`
- private virtual network
- launch resources like EC2 instanes inside the VPC 
- isolte and protect resources 
- spans AZs within a region

## Internet Gateways

> defines the public "front door" of the VPC

- Types
	1. `Internet Gateway`
	2. `Virtual Private Gateway` 👉 vpn connection
	3. `Direct Connect`
		- site to site
		- Direct Connect (DX) 👉 physical connection between on-premis and AWS


## Nat Gateway (_managed service_) / NAT Instances (_self managed_)

> allows instances in Private Subnet to access internet while remaining private

## Subnets

> partition the network in order to group resources based on security or operational needs 👉 defined at the availability zone level

## Route Table

> defined access to the internet and between subnets

## Network Access Control Lists (NACL)

> STATELESS firewall for SUBNET level security
> controls traffic into and out of our VPC

- virtual firewall that controls inbound and outbound traffic at the subnet level
- Rule Categories
    - Allow
    - Deny

## 👀 VPC Flow Logs 👀

> captures all information about IP traffic going to your instances

- Log Types
	1. VPC Flow Logs
	2. Subnet Flow Logs
	3. Elastic Network Interface Flow Lows

## Peering

> connect 2 VPCs and behave like they are the name network

- 🚨 must not have overlapping CIDR ranges
- 🚨 NOT transitivie as you add VPCs 👉 must manually add peer to each network

## VPC Endpoint

> connect to AWS services WITHIN a vpc using a private network instead of the public `www` network

- higher security & lower latency
-




