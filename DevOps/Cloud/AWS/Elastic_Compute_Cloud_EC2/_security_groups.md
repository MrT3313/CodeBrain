# Security Groups

> STATEFUL firewall for INSTANCE level security
> controls traffic into out EC2 instances

- 🔆 good to maintain one separate security group for SSH access
- Default Rules
    - ALL inbound traffic is BLOCKED
    - ALL outboud traffic is AUTHORIZED
- 🚨 security groups to NOT check traffic going OUT of an EC2 Instance 👉 unlike Network Access Control Lists
- Rule Categories
    - Allow
- Security Group Rules can be referenced by `IP` || `Security Group`
- Can be attached to multiple instances
- Specific to a region / VPC combination