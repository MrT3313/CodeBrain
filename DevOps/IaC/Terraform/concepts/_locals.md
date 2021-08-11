# LOCALS

- how to work with multiple environments 
- in `main.tf` file

```tf
locals {
  prefix = "${var.prefix}-${terraform.workspace}"
  common_tags = {
    Environment = terraform.workspace
    Project = var.project
    Owner = var.contact
    ManagedBy = "Terraform"
  }
}

```