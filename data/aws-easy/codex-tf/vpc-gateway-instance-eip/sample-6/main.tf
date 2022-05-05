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
    Name = "terraform-gw"
  }
}

# Create EC2 Instance
resource "aws_instance" "name_2" {
  ami = "ami-0bbe28ebb17ad3955"
  instance_type = "t2.micro"
  key_name = "terraform-key"
  subnet_id = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.web.id]
  associate_public_ip_address = true
  tags = {
    Name = "terraform-web"
  }
}

# Resource block: Create Elastic IP
resource "aws_eip" "name_3" {
  vpc = true
  instance = aws_instance.name_2.id
}

