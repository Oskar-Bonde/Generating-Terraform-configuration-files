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

# make a vpn gateway to the VPC
resource "aws_internet_gateway" "name_1" {
  vpc_id = "${aws_vpc.name_0.id}"
}

# create a customer gateway to the VPC
resource "aws_customer_gateway" "name_2" {
  bgp_asn = 65000
  type = "ipsec.1"
  tags {
    Name = "terraform-ci-vpn"
  }
}

# make a vpn connection to the VPC
resource "aws_vpn_connection" "name_3" {
  vpn_gateway_id = "${aws_vpn_gateway.default.id}"
  type = "ipsec.1"
  tags {
    Name = "terraform-ci-vpn"
  }
}

