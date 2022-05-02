terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block: aws in us east 1 
#
# This is the AWS provider block for the us-east-1 region. This
# provider block is the minimum required for Terraform to operate.
#
# You can add additional provider blocks for other regions.
provider "aws" {
  region = "us-east-1"
}

# Create a AWS VPC resource with private network 10.0.0.0/16
#
# This is the VPC resource that manages the VPC itself.
resource "aws_vpc" "name_0" {
  cidr_block = "10.0.0.0/16"
}

# Create AWS subnets resource in private network 10.0.1.0/24 and map public ip on launch set true. Use VPC id
#
# This resource manages the subnets themselves.
resource "aws_subnet" "name_1" {
  vpc_id = "${aws_vpc.name_0.id}"
  cidr_block = "10.0.1.0/24"
  map_public_ip_on_launch = true
}

# create a nat gateway, use private connectivity type and subnet id
#
# This resource manages the NAT gateway.
resource "aws_nat_gateway" "name_2" {
  allocation_id = "${aws_eip.nat.id}"
  subnet_id = "${aws_subnet.name_1.id}"
  depends_on = ["aws_internet_gateway.gw"]
}

