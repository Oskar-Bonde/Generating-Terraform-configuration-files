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
}

# make a vpn gateway 
resourcevariable "vpn_gateway" {
  default = "10.0.1.1"
}

# create a customer gateway
resource
resource "aws_customer_gateway" "name_1" {
  vpc_id = "${aws_vpc.name_0.id}"
}

# make a vpn connection
resource
resource "aws_vpn_connection" "name_2" {
  vpn_gateway_id = "${aws_vpn_gateway.default.id}"
  type = "ipsec.1"
  static_routes_only = true
}

