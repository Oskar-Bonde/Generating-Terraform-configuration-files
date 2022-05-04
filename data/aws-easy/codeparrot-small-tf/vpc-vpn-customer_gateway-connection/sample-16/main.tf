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

# make a vpn gateway
resource "aws_vpn_gateway" "name_1" {
  vpc_id = "${aws_vpc.name_0.id}"
}

# create a customer gatewayvariable
resource "aws_customer_gateway_variable" "name_2" {
  vpc_id = "${aws_vpc.name_0.id}"
  key_name = "terraform_vpn"
}

# make a vpn connectionresource
resource "aws_vpn_connection" "name_3" {
  vpn_gateway_id = "${aws_vpn_gateway.name_1.id}"
  customer_gateway_id = "${aws_customer_gateway_variable.name_2.id}"
  type = "ipsec.1"
  static_routes_only = true
}

