# Route53

> MANAGED Domain Name Service (DNS) service

- `$0.50` / month / hosted zone
- Check that it is setup correctly
	- `nslookup` 👉 `nslookup <url>`
	- `dig` 👉 `dig <url>`
- Automatically performs health checks on resources
## Records
	- `A` : IPv4
	- `AAAA` : IPv6
	- `CNAME` : hostname to hostname
		- 🚨 only works for nonROOT domains (ex: something.mydomain.com)
	- `Alias` : hostname to AWS service
		- work for ROOT and nonRoot domains (app.mydomain.com 👉 blabla.amazonaws.com)
		- free
		- have native health checks

## Routing Policy

> additional load balancing through RT53

- Simple 👉 used to redirect to a single resource
- Weighted
	- test 1% of traffic on new website
	- split traffic between two reagions
	- can be associated with Health Checks
- Latency Based
	- evaluated in terms of user to designated AWS Region
- Failover
- GeoLocation 👉 based on user location
- GeoProximity
	- set bias
	- shifting traffic from one region to another
- Multi Value Routing


## Time to Live

> mandatory for all DNS

- HIGH = 24hours (less traffic on DNS 👉 possibility of outdated records)
- LOW = 60s (very easy to change records)

