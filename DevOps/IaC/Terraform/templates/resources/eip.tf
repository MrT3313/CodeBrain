# Amazon EIP
## Create a public IP address
## Attach to another instance

resource "aws_eip" "terraform-instance-eip" {
  instance = "${name_of_instance_also_on_main.tf_sheet}" || name_of_instance_also_on_main.tf_sheet
  vpc      = true
}