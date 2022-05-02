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
aws_customer_gateway" "default" {
  bgp_asn = 65000
  ip_address = "${aws_instance.ec2demo.public_ip}"
}

# make a vpn connection
resourceresource "aws_vpn_connection" "default" {
  vpn_gateway_id = "${aws_vpn_gateway.default.id}"
  customer_gateway_id = "${aws_customer_gateway.default.id}"
}

