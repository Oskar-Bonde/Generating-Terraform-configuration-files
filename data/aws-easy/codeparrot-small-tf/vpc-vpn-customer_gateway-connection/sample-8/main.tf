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
}

# make a vpn gateway 
resource
aws_vpn_gateway" "default" {
  vpc_id = "${aws_vpc.name_0.id}"
}

# create a customer gateway
resource
aws_vpn_gateway" "default" {
  vpc_id = "${aws_vpc.name_0.id}"
}

# make a vpn connection
resource
aws_vpn_connection" "default" {
  vpn_gateway_id = "${aws_vpn_gateway.default.id}"
  user_data = "${file("userdata/vpn.cfg")}"
}
