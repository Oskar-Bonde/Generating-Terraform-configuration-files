terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider block 
provider "aws" {
  region = "us-east-1"
}

# create vpc resource
resource "aws_vpc" "name_0" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "vpc-terraform"
  }
}

# create an egress only internet gateway
resource "aws_egress_only_internet_gateway" "name_1" {
  vpc_id = aws_vpc.name_0.id
}

