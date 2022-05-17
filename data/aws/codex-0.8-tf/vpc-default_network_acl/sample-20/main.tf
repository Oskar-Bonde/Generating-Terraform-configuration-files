terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block: aws in us east 1 
provider "aws" {
  region = "us-east-1"
}

# Create a AWS VPC resource with private network 10.0.0.0/16
resource "aws_vpc" "name_0" {
  cidr_block = "10.0.0.0/16"
}

# create a default network acl, vpc acl id. As ingress, set protocal -1, rule number 100, cird block 0.0.0.0/0, from port 83 to port 0 and action allow
resource "aws_default_network_acl" "name_1" {
  default_network_acl_id = "${aws_vpc.name_0.default_network_acl_id}"

  ingress {
    protocol   = "-1"
    rule_no    = 100
    cidr_block = "0.0.0.0/0"
    from_port  = 83
    to_port    = 0
    action     = "allow"
  }
}

