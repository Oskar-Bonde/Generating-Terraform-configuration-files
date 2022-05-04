terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS instance
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# create wafv2 ip set# https://www.terraform.io/docs/providers/aws/r/instance.html
resource "aws_eip" "name_0" {
  instance = aws_instance.ec2demo.id
  vpc      = true
}

