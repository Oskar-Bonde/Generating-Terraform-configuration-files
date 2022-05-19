terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block
provider "aws" {
  region = "us-east-1"
}

# Create a AWS VPC resource
resource "aws_vpc" "name_0" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support = true
  tags = {
    Name = "terraform-vpc"
  }
}

# Create AWS subnets resource 
resource "aws_subnet" "name_1" {
  vpc_id = aws_vpc.name_0.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true
  tags = {
    Name = "terraform-public-subnet"
  }
}

# create a nat gateway
resource "aws_nat_gateway" "name_2" {
  allocation_id = aws_eip.nat.id
  subnet_id = aws_subnet.name_1.id
  tags = {
    Name = "terraform-nat-gateway"
  }
}

