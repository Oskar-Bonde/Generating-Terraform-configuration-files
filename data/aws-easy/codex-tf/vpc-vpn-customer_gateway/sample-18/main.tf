terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block
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

# make a vpn gateway
resource "aws_vpn_gateway" "name_1" {
  tags = {
    Name = "terraform-vpn-gateway"
  }
}

# create a customer gateway
resource "aws_customer_gateway" "name_2" {
  bgp_asn    = 65000
  ip_address = "1.1.1.1"
  type       = "ipsec.1"
  tags = {
    Name = "terraform-customer-gateway"
  }
}

