terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block with AWS
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create a AWS VPC resource
resource "aws_vpc" "name_0" {
  cidr_block = "10.0.0.0/16"
}

# make a vpn gateway#
resource "aws_vpn_gateway" "name_1" {
  vpc_id = "${aws_vpc.name_0.id}"
  tags {
    Name = "terraform-example-vpn-gateway"
  }
}

# create a customer gateway
resource "aws_customer_gateway" "name_2" {
  bgp_asn    = 65000
  ip_address = "${aws_eip.default.public_ip}"
  type       = "ipsec.1"
  tags {
    Name = "terraform-example-customer-gw"
  }
}

# make a vpn connection
resource "aws_vpn_connection" "name_3" {
  customer_gateway_id = "${aws_customer_gateway.name_2.id}"
  customer_gateway_tags = {
    "customer-gateway" = "true"
  }
  tags {
    Name = "terraform-example-vpn-connection"
  }
}

