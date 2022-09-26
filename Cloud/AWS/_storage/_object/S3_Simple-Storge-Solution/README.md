# S3

> Object :: Files  
> Buckets :: Directories

Durability = HIGH (11 9s)
Availability = HIGH
## Storage Classes

> All have different configurations & features in order to optimize cost based on needs

| Class Name 							| Class Description 							 | Durability | Availability | 
| --- 	     							| ---				 							 | ---	        | ---       | 
| S3 Standard 							| Frequently accessed data						 | 99.999999999  | 99.99%	|
| S3 Intelligent-Tiering 				| Data w/ unknown || changing access patterns 	 | 99.999999999  | 99.99%	|
| S3 Standard - Infrequent Access (IA)  | Long-lived data / infrequently accessed 		 | 99.999999999  | 99.99%	|
| S3 One Zone - Infrequent Access (IA)  | 												 |				 |			|
| S3 Glacier 							| Long-Term backups								 | 99.999999999  | 			|
| S3 Glacier Deep Archive 				| Long-term data archival accesses 1x || 2x / yr | 99.999999999  | 			|												|				|			|
| S3 Outposts							| data that needs to be kept local				 | 				 | 		    | 


- S3 Standard
	- General Purpose Storage
	- Data stores across multiple AZ
	- Low Latency and high throughput
- S3 Intelligent-Tiering
	- autoamtically moves data to the mot cost-effective storage class based on usage patterns
	- automatic cost cavings
	- no retrieval fees
	data stored across multipls AZs
- S3 Standard - Infrequent Access (IA)
	- Data accesses less frequently but required rapid access if needed
	data scored across multiple AZs cheeper than S3 Standard
	- 
- S3 One-Zone Infreqeunt Access (IA)
- S3 Glacier
	- long-term data storage and archival for lower costs
	- data retrieval takes longer 
	- 3 retrieval options: 1-5 min, 3-5hrs, 5-12hrs
	- data stored across multiple AZs
- S3 Glacier Deep Archive
	- like S3 Glacier but longer access times
	-  2 retrieval options: 12hrs, 38hrs
	- data stored across multiple AZs
- S3 Outposts
	- object storage on-premises



## Buckets

> holds `Objects` (_files)

- 👀 no real concept of directories but you can mimic the use through a `prefix`

- key 👉 FULL path
	- path 👉 <bucket_address>/<prefix>/<object_name>
	```
	s3://my-bucket/my_folder/my_file.txt
	s3://my-bucket/my_folder/another_folder/my_file.txt
	```

## Versioning

> enabled at the bucket level

## Encryption

> can be managed at the file or bucket level

- SSE-S3 👉 using keys handled & managed by Amazon S3
	- encrypted on the server side
	- AES-256 encryption type
	- header: `x-amz-server-side-encryption`: `AES256`
- SSE-KMS 👉 using keys handled & managed by KMS
	- KMS advantages
		- user control
		- audit trail
	-  header: `x-amz-server-side-encryption` : `aws:kms`
- SSE-C 👉 using keys handled & managed by THE USER (outside of AWS)
	- must use HTTPS
	- key must be in header
- Client Side Encryption 👉 encrypted before sent to S3

## Static Website

> whole bucket can be make into a static website

## CORS

- if client does cross-origin request on S3 bucket the appropriate CORS headers must be enables

## Consistency Model

	- read after write consistency
	- subsequent list requests reflect changes -> list consistency

