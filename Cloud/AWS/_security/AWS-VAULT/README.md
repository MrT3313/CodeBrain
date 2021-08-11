# AWS Vault

- Create Profile 👉 `aws-vault add <profile_name`
- Activate Profile 👉 `aws-vault exec <profile_name> --duration=1h`
	- 🚨 Windows: `aws-vault exec <profile_name> --duration=1h -- cmd.exe
- Activate Shell 👉 `aws-vault exec <profile_name> bash`
- Login to Console with Profile Information 👉 `aws-vault list`
- Rotate Credentials 👉 `aws-vault rotate <profile_name>`
- Remove Credentials (NOT remove profile)
	1. `aws-vault remove <profile_name>`
	2. Delete: `~/Library/Keychains` > `aws-vault.keychain`
- Check Profile 👉 `aws sts get-caller-identity`

---

