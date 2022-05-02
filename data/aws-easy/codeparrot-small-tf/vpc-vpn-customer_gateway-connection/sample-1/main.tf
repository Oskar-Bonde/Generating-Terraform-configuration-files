terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create a AWS VPC resource 
resource "aws_vpc" "name_0" {
  cidr_block = "10.0.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true
  tags {
    Name = "terraform-example"
  }
}

# make a vpn gateway 
resource "aws_vpn_gateway" "name_1" {
  vpc_id = "${aws_vpc.name_0.id}"
  tags {
    Name = "terraform-example"
  }
}

# create a customer gateway
resource "aws_customer_gateway" "name_2" {
  bgp_asn = 65000
  tags {
    Name = "terraform-example"
  }
}

# make a vpn connection
resource "aws_vpn_connection" "name_3" {
  vpn_gateway_id = "${aws_vpn_gateway.name_1.id}"
  tags {
    Name = "terraform-example"
  }
}

