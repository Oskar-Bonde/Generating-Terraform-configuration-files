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

# AWS Internet Gateway
resource "aws_internet_gateway" "name_1" {
  vpc_id = aws_vpc.name_0.id
  tags = {
    Name = "terraform-igw"
  }
}

# Create AWS route table
resource "aws_route_table" "name_2" {
  vpc_id = aws_vpc.name_0.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.name_1.id
  }
  tags = {
    Name = "terraform-rt"
  }
}

# Create route resource
resource "aws_route_table_association" "name_3" {
  subnet_id      = aws_subnet.subnet.id
  route_table_id = aws_route_table.name_2.id
}

