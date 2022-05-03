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

# Create a AWS VPC resource with cidr block 10.0.0.0/16
resource "aws_vpc" "name_0" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "terraform-aws-vpc"
  }
}

# make a vpn gateway with the vpc id
resource "aws_vpn_gateway" "name_1" {
  vpc_id = "${aws_vpc.name_0.id}"
  tags = {
    Name = "terraform-aws-vpn-gw"
  }
}

# create a customer gateway with BGP ASN set to 65000, ip address 172.0.0.1 and type ipsec.1
resource "aws_customer_gateway" "name_2" {
  bgp_asn    = 65000
  ip_address = "172.0.0.1"
  tags = {
    Name = "terraform-aws-customer-gw"
  }
}

# make a vpn connection with the vpn gateway id and customer gateway id. Use type ipsec.1, and use static routes only.
resource "aws_vpn_connection" "name_3" {
  vpn_gateway_id = "${aws_vpn_gateway.name_1.id}"
  customer_gateway_id = "${aws_customer_gateway.name_2.id}"
  type = "ipsec.1"
  static_routes_only = true
}

