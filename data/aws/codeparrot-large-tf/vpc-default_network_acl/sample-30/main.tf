terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block: aws in us east 1 region and default profile
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create a AWS VPC resource with private network 10.0.0.0/16
resource "aws_vpc" "name_0" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = true
  tags = {
    Name = "vpc-${var.vpc_name}"
  }
}

# create a default network acl, vpc acl id. As ingress, set protocal -1, rule number 100, cird block 0.0.0.0/0, from port 83 to port 0 and action allowvariable true
resource "aws_network_acl" "name_1" {
  vpc_id = "${aws_vpc.name_0.id}"
  egress {
    protocol = -1
    rule_no = 100
    action = "allow"
    cidr_block = "0.0.0.0/0"
    from_port = 83
    to_port = 0
  }
  ingress {
    protocol = 1
    rule_no = 100
    action = "allow"
    cidr_block = "0.0.0.0/0"
    from_port = 0
    to_port = 0
  }
  egress {
    protocol = -1
    rule_no = 100
    action = "allow"
    cidr_block = "0.0.0.0/0"
    from_port = 0
    to_port = 0
  }
  tags = {
    Name = "default-network-acl"
  }
}

