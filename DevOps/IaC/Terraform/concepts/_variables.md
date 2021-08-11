# Terraform Variables

> variables.tf 

- prefix

```tf
variable "project" {
  default = "name_of_project"
}
```

- tag 

```tf
variable "contact" {
  default = "example@example.com"
}
```

use `merge` feature to spread and update `common_tags`

---

## Define

### User Inputs
> variable var_name {
> type = string

### Hardcoded 

## Access

> var.name_of_variable