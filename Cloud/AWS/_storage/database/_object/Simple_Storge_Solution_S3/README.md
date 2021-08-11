# S3



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

