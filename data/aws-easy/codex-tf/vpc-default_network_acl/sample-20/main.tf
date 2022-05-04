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
  default_network_acl_id = "acl-12345678"
  subnet_id = "subnet-12345678"
  ingress {
    protocol = "tcp"
    rule_no = 100
    action = "allow"
    cidr_block = "10.0.0.0/16"
    from_port = 80
    to_port = 80
  }
  egress {
    protocol = "tcp"
    rule_no = 100
    action = "allow"
    cidr_block = "10.0.0.0/16"
    from_port = 80
    to_port = 80
  }
}

