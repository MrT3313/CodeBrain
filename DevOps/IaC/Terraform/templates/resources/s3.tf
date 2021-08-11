# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket

resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket"
  acl    = "private"
  subnet_id             = "" # if not default subnet

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}