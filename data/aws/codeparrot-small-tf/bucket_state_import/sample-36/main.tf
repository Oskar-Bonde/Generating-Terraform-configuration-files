terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block AWS with region us east
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867"
  instance_type = "t2.micro"
}

# Resource, create s3 bucket. Set bucket to state-import-bucket and force destroy false
# Terraform block with the AWS provider
resource "aws_s3_bucket" "name_1" {
  bucket = "terraform-state-import-bucket"
  acl    = "private"
  force_destroy = false
}

