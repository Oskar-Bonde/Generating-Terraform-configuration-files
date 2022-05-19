terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# AWS provider block
provider "aws" {
  region = var.aws_region
}

# Resource block with an amazon VPC
resource "aws_vpc" "name_0" {
  cidr_block = var.vpc_cidr_block
  tags = {
    Name = "my_vpc"
  }
}

