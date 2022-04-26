terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# AWS provider block
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Resource block with an amazon VPC
resource "aws_vpc" "name_0" {
  cidr_block = "10.0.0.0/16"
}

