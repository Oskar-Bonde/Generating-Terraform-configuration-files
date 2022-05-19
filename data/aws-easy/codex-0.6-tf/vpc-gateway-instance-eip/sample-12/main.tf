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
    Name = "my_vpc"
  }
}

# AWS Internet Gateway 
resource "aws_internet_gateway" "name_1" {
  vpc_id = aws_vpc.name_0.id
  tags = {
    Name = "my_igw"
  }
}

# Create EC2 Instance
resource "aws_instance" "name_2" {
  ami = "ami-0b59bfac6be064b78"
  instance_type = "t2.micro"
  subnet_id = aws_vpc.name_0.public_subnets[0]
  vpc_security_group_ids = [aws_security_group.my_sg.id]
  associate_public_ip_address = true
  tags = {
    Name = "my_instance"
  }
}

# Resource block: Create Elastic IP
resource "aws_eip" "name_3" {
  vpc = true
  tags = {
    Name = "my_eip"
  }
}

