terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS block with the following settings
provider "aws" {
  alias   = "us-east-1"
  region  = "us-east-1"
}

# create a workspace ip group
resource "aws_security_group" "name_0" {
  name        = "ec2demo_workstation"
  description = "Used in the terraform"
  vpc_id      = "${aws_vpc.default.id}"
}

