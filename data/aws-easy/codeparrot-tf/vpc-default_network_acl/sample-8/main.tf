terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider block
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create a AWS VPC resource 
resource "aws_vpc" "name_0" {
  cidr_block = "10.0.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true
}

# create a default network acl
resource
aws_network_acl" "default" {
  vpc_id = "${aws_vpc.name_0.id}"
  subnet_ids = ["${aws_subnet.default.id}"]
}

