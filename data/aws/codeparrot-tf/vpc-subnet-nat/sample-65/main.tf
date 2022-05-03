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

# Create a AWS VPC resource with private network 10.0.0.0/16
resource "aws_vpc" "name_0" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = {
    Name = "vpc-${var.environment}"
  }
}

# Create AWS subnets resource in private network 10.0.1.0/24 and map public ip on launch set true. Use VPC idvariable to access the subnet.
resource "aws_subnet" "name_1" {
  vpc_id                  = "${aws_vpc.name_0.id}"
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1e"
  tags = {
    Name = "subnet-public-${var.environment}"
  }
}

# create a nat gateway, use private connectivity type and subnet id
resource "aws_nat_gateway" "name_2" {
  allocation_id = "${aws_eip.nat.id}"
  subnet_id     = "${aws_subnet.name_1.id}"
}

