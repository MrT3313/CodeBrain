# AWS CLI

## Resources

- [Installing, updating, and uninstalling the AWS CLI version 2](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)

---

## Install

## Dry Run

> a way to test if your permissions are correct

- `--dry-run`

## 👀 Decoding 👀

> use `sts` commands

- make sure that you have assigned the appropriate permissions to allow user to make sts commands

## Profiles

> .aws/config

1. Configure Command 👉 `aws configure`

2. Multiple Profiles
	```
	[default]

	[profile]
	```

	- call on specific profile 👉 `--profile`

- get credentials API call 👉 `aws sts get-session-token`

## Credential Provider Chain

1. Command Line Options 👉 --region / --output / --profile
2. Env Variables 👉 AWS_ACCESS_KEY_ID / AWS_SECRET_ACCESS_KEY / AWS_SESSION_TOKEN
3. CLI Credentials 👉 .aws/credentials
4. CLI Configure file 👉 .aws/config
5. Container Credentials 👉 for ECS tasks
6. Instance Provider Credentials 👉 for EC2 instance profiles

## Configure

- Required Information
	- Access key ID
	- Secret Acccess key
	- AWS Region
	- Output Format