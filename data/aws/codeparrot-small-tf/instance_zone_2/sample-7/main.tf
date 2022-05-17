terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block AWS with region "us-east-1"
# https://www.terraform.io/docs/providers/aws/r/instance_type.html
provider "aws" {
  region = "us-east-1"
}

# Resource, make aws instance. Use ami-038f1ca1bd58a5790, instance type t2.small and availability zone us-east-1e
# https://www.terraform.io/docs/providers/aws/r/instance_type.html
resource "aws_instance" "name_0" {
  ami           = "ami-038f1ca1bd58a5790"
  instance_type = "t2.small"
}

