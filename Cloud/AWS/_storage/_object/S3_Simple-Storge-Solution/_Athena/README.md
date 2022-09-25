# Athena

> serverless service to perform analytics directly against S3 files

- uses SQL
- has `JDBC` / `ODBC` driver
- charged per query and amount of data scanned
- supported formats
	- CSV
	- JSON
	- ORC
	- Avro
	- Parquet (built on Presto)

- Use Cases
	- Business inteligence
	- analyrics
	- reporting
	- analyze / query
		- VPC Flow Logs
		- ELB Logs
		- CloudTrail