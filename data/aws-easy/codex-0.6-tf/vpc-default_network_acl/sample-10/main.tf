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
  tags = {
    Name = "terraform-vpc"
  }
}

# create a default network acl
resource "aws_default_network_acl" "name_1" {
  default_rule {
    rule_number = 0
    action      = "allow"
    protocol    = "-1"
    cidr_block  = "0.0.0.0/0"
  }

  default_rule {
    rule_number = 32767
    action      = "allow"
    protocol    = "-1"
    cidr_block  = "0.0.0.0/0"
  }
}

