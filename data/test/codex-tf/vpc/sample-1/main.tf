terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# AWS provider block in region us-east-1 and default profile
provider "aws" {
  region = "us-east-1"
  profile = "default"
}

# Resource block with an amazon VPC in private network 10.0.0.0/16
resource "aws_vpc" "name_0" {
  cidr_block = "10.0.0.0/16"
}

