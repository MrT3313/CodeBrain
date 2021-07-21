# AWS Vault

## Create Profile

> `aws-vault add <profile_name`

## Use Profile

- Create AWS Vault Active Window
	> `aws-vault exec <profile_name> --duration=1h`

	- 🚨 Windows: `aws-vault exec <profile_name> --duration=1h -- cmd.exe
- Create Shell
	> `aws-vault exec <profile_name> bash`

## Check Profile
- `aws sts get-caller-identity`

---

