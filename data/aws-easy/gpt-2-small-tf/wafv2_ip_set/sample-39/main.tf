terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS configuration file
# Terraform Block with AWS provider
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# create wafv2 ip set#
resource "aws_eip" "name_0" {
  instance = aws_instance.ec2demo.id
  vpc       = true
}

