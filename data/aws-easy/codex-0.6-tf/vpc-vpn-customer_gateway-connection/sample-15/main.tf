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
  enable_dns_hostnames = true
  enable_dns_support = true
  tags = {
    Name = "vpc-demo"
  }
}

# make a vpn gateway 
resource "aws_vpn_gateway" "name_1" {
  vpc_id = aws_vpc.name_0.id
  tags = {
    Name = "vpn-gateway-demo"
  }
}

# create a customer gateway
resource "aws_customer_gateway" "name_2" {
  bgp_asn = 65000
  ip_address = "172.16.0.1"
  type = "ipsec.1"
  tags = {
    Name = "customer-gateway-demo"
  }
}

# make a vpn connection
resource "aws_vpn_connection" "name_3" {
  vpn_gateway_id = aws_vpn_gateway.name_1.id
  customer_gateway_id = aws_customer_gateway.name_2.id
  type = "ipsec.1"
  static_routes_only = true
  tags = {
    Name = "vpn-connection-demo"
  }
}

