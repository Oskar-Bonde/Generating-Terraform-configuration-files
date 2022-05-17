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
# of the subnet in the first availability zone.
resource "aws_subnet" "name_1" {
  vpc_id = aws_vpc.name_0.id
  cidr_block = "10.0.1.0/24"
}

# create a nat gateway, use private connectivity type and subnet id
resource "aws_nat_gateway" "name_2" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.name_1.id
}

