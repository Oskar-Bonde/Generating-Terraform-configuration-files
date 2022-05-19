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
  tags = {
    Name = "terraform-vpc"
  }
}

# Create AWS subnets resource 
resource "aws_subnet" "name_1" {
  count = 2
  vpc_id = aws_vpc.name_0.id
  cidr_block = "10.0.${count.index}.0/24"
  availability_zone = "us-east-1${count.index}"
  tags = {
    Name = "terraform-subnet-${count.index}"
  }
}

# create a nat gateway
resource "aws_nat_gateway" "name_2" {
  count = 2
  allocation_id = aws_eip.main[count.index].id
  subnet_id = aws_subnet.name_1[count.index].id
  tags = {
    Name = "terraform-nat-gateway-${count.index}"
  }
}

