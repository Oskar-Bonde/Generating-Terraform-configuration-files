terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block: aws in us east 1
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create a AWS VPC resource with private network 10.0.0.0/16
resource "aws_vpc" "name_0" {
  cidr_block = "10.0.0.0/16"
}

# Create AWS subnets resource in private network 10.0.1.0/24 and map public ip on launch set true. Use VPC id
# of the subnet to create the instance in.
resource "aws_subnet" "name_1" {
  vpc_id = "${aws_vpc.name_0.id}"
  cidr_block = "10.0.1.0/24"
}

# create a nat gateway, use private connectivity type and subnet id

# create a route table for public subnet
resource "aws_route_table" "name_2" {
  vpc_id = "${aws_vpc.name_0.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.main.id}"
  }
}

