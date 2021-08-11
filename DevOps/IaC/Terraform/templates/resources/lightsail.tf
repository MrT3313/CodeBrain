# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lightsail_instance

resource "aws_lightsail_instance" "my_lightsail" {
  name              = "my_lightsail"
  availability_zone = "us-east-1a"
  blueprint_id      = ""
  bundle_id         = ""
  key_pair_name     = ""
  subnet_id         = "" # if not default subnet
  tags = {
    version: "0.0.1"
  }
}