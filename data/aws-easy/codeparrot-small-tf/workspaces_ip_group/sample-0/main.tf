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

# create a workspace ip group
resource "aws_security_group" "name_0" {
  name        = "ec2-demo-sg"
  description = "Used in the terraform"
  vpc_id      = "${aws_vpc.default.id}"
}

