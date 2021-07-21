## Policies

> json document that allows or denies permissions to a service or resource

- `inline` policies are policies that are only connected to a specific user

- Parts
	1. `Version` : _required_
	2. `Id` : _optional_
	3. `Statement` : _required_
		- `Sid` : _optional_ 👉 statement ID
		- `Effect` : _required_ 👉 "Allow" || "Deny"
		- `Principle` : _required_ 👉 who policy is applied to
		- `Action` : _required_ 👉 list of API calls to be included under the statement
		- `Resource` : _optional_ 👉 specific ARN

- [policy simulator](https://policysim.aws.amazon.com/home/index.jsp?#)
- [policy generator](https://awspolicygen.s3.amazonaws.com/policygen.html)

## Roles

> have associated permissions that can be assumed for a TEMPORARY amount of time 👉 similar to a user but have no username or password

## Service Control Policies

> specify maximum permissions