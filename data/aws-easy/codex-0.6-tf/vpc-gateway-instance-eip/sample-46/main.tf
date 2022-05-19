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

# Create EC2 Instance
resource "aws_instance" "name_2" {
  ami = "ami-0b33d91d"
  instance_type = "t2.micro"
  subnet_id = aws_vpc.name_0.id
  tags = {
    Name = "terraform-ec2"
  }
}

# Resource block: Create Elastic IP
resource "aws_eip" "name_3" {
  vpc = true
  tags = {
    Name = "terraform-eip"
  }
}

