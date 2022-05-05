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

# AWS Internet Gateway 
resource "aws_internet_gateway" "name_1" {
  vpc_id = aws_vpc.name_0.id
  tags = {
    Name = "terraform-gw"
  }
}

# Create EC2 Instance
resource "aws_instance" "name_2" {
  ami = "ami-0ac019f4fcb7cb7e6"
  instance_type = "t2.micro"
  subnet_id = aws_vpc.name_0.public_subnets[0]
  tags = {
    Name = "terraform-instance"
  }
}

# Resource block: Create Elastic IP
resource "aws_eip" "name_3" {
  vpc = true
  instance = aws_instance.name_2.id
}

