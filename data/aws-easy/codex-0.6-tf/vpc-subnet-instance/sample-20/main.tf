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

# Create a AWS VPC
resource "aws_vpc" "name_0" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "main"
  }
}

# Create AWS subnets resource
resource "aws_subnet" "name_1" {
  vpc_id = aws_vpc.name_0.id
  cidr_block = "10.0.0.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = "main"
  }
}

# Create EC2 Instance
resource "aws_instance" "name_2" {
  ami = "ami-0b59bfac6be064b78"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.name_1.id
  tags = {
    Name = "web"
  }
}

