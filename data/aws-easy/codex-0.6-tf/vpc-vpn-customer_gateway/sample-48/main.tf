terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block
provider "aws" {
  region = var.region
}

# Create a AWS VPC resource
resource "aws_vpc" "name_0" {
  cidr_block = var.vpc_cidr_block
  tags = {
    Name = var.vpc_name
  }
}

# make a vpn gateway
resource "aws_vpn_gateway" "name_1" {
  tags = {
    Name = var.vpn_gateway_name
  }
}

# create a customer gateway
resource "aws_customer_gateway" "name_2" {
  bgp_asn = var.bgp_asn
  ip_address = var.ip_address
  type = var.type
  tags = {
    Name = var.customer_gateway_name
  }
}

