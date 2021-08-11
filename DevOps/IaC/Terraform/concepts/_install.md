# Install Terraform

## Resources 
1. [Learn Hashicorp - Install Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli)


### Mac

### Linux

🚨 be sure to move terraform install to `/use/local/bin/`

### Windows

## Steps

### Into Ec2 Instance
1. Install Binary
   - `curl -O https://releases.hashicorp.com/terraform/0.12.16/terraform_0.12.16_linux_amd64.zip`
   - wget ...
    
2. Unzip binary
    - `unzip terraform_0.12.16_linux_amd64.zip -d /usr/bin/`

3. Check Terraform Version
    - `terraform -v`