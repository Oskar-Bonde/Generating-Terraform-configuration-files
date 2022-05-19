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

# Create a AWS VPC
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
  cidr_block = var.subnet_cidr_block[count.index]
  availability_zone = var.availability_zone[count.index]
  tags = {
    Name = var.subnet_name[count.index]
  }
}

# Create EC2 Instance
resource "aws_instance" "name_2" {
  ami = var.ami_id
  instance_type = var.instance_type
  key_name = var.key_name
  subnet_id = aws_subnet.name_1[0].id
  vpc_security_group_ids = [aws_security_group.sg.id]
  tags = {
    Name = var.ec2_name
  }
}

