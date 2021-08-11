# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance

provider "aws" {
  region                = "us-east-1"
  version               = "~> 2.8"
  access_key            = ""
  secret_key            = ""
}

resource "aws_instance" "web" {
  ami                   = data.aws_ami.ubuntu.id
  instance_type         = "t3.micro"
  subnet_id             = "" # if not default subnet

  tags = {
    Name                = "HelloWorld"
  }
}
