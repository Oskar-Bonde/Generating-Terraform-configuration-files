terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider block
provider "aws" {
  region = "us-east-1"
}

# Create a AWS VPC resource 
resource "aws_vpc" "name_0" {
  cidr_block = "10.0.0.0/16"
}

# create a default network acl
resource "aws_default_network_acl" "name_1" {
  default_network_acl_id = aws_vpc.name_0.default_network_acl_id
}

