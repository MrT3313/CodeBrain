# Relational Database Service (RDB)

> AWS MANAGED DB service for SQL databases

- supported
	- Postgres
	- MySQL
	- MariaDB
	- Oracle
	- Microsoft SQL Server
	- Aurora (AWS Proprietary DB)
- high availbility & fault tolerance using Multi-AZ deployment option
- launch read replicas across Regions in order to provide enhanced performance and durability
## Backups

- automatically enabled
	- Daily full backup (during defined maitenance window)
	- Transaction logs are backed up every 5 min
	- 7 day retention (can be increased to 35)

- snapshots
	- manually triggered by user
	- saved as long as you want

## Auto Scaling

> 🔆 avoid manually scaling your database storage 👉 set Maximum Storage Threshold instead and let RDS handle it

## Read Replicas

> help to scale database reads

- up to 5
- Options
	- within an AZ
	- across AZ
	- across region

- 👀 FREE as long as replicas are in the same region

## Multi Availability Zone (Disaster Recovery)

- yes you can set up read replicas to be multi availability zoned

## Encryption

> can encrypt the master & read replicas w/ AWS KMS - AWS-256

- must be defined at launch time
- if the master if NOT encrypted the read replicates CANNOT be encrypted
- Transparent Data Encryption (TDE) available for Oracle & SQL server

### In-Flight Encryption

> SSL Certificates

- enforce SSL
	- PostgreSQL : `rds.force_ssl=1` in AWS RDS Console (Parameter Group)


## IAM Database Connection

> only MySQL & PostgreSQL 👉 authentication token obtained through IAM & RDS API calls