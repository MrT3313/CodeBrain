# VPC Security

## Network Access Control Lists (ACL)

> STATELESS subnet level security

- virtual firewall that controls inbound and outbound traffic at the subnet level
- check traffic going into and leaving a subnet

## Security Groups

> STATEFUL instance level security

- virtual firewall that controls inbound and outbound traffic for an Amazon EC2 instance
- checks traffic going into (not out of) an EC2 instance
- can accept specific type of traffic