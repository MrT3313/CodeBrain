# Terraform
Owner: _by HashiCorp_

- open-source Infrastructure as Code (IaC) software tool created
- Enables users to define and provision a datacenter infrastructure using the Hashicorp Configuration Language (HCL)

---

## BEST PRACTICES

- run terraform within docker-compose
	- if you have different projects using different versions of terraform you can have a case where somebody updates accidently due to the version on their computer which causes everybody else to lose access

- prefix your resource names

- use tags

## Providers

- [List](https://registry.terraform.io/browse/providers)

## Resources

The actual tools that can be configured from a particular provider

