terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block
provider "aws" {
  region     = var.region
  profile    = var.profile
  shared_credentials_file = var.shared_credentials_file
}

# Create a AWS VPC resource
resource "aws_vpc" "name_0" {
  cidr_block = var.vpc_cidr_block
  tags = {
    Name = var.vpc_name
  }
}

# Create AWS subnets resource 
resource "aws_subnet" "name_1" {
  count = var.subnet_count
  vpc_id = aws_vpc.name_0.id
  cidr_block = var.subnet_cidr_block
  availability_zone = var.subnet_availability_zone[count.index]
  map_public_ip_on_launch = var.subnet_map_public_ip_on_launch
  tags = {
    Name = var.subnet_name[count.index]
  }
}

# create a nat gateway
resource "aws_nat_gateway" "name_2" {
  count = var.subnet_count
  allocation_id = aws_eip.nat[count.index].id
  subnet_id = aws_subnet.name_1[count.index].id
  tags = {
    Name = var.nat_name[count.index]
  }
}

