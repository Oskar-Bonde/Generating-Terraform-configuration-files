provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# AWS provider block with AWS
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create Security Groupvariable
resource "aws_security_group" "name_0" {
  name        = "terraform_example"
  description = "Used in the terraform"
  vpc_id      = "${aws_vpc.default.id}"
}

