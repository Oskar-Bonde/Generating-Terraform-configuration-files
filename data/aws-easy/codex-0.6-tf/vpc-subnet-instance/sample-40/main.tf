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
  enable_dns_hostnames = true
  enable_dns_support = true
  tags = {
    Name = "terraform-vpc"
  }
}

# Create AWS subnets resource
resource "aws_subnet" "name_1" {
  count = 2
  vpc_id = aws_vpc.name_0.id
  cidr_block = cidrsubnet(aws_vpc.name_0.cidr_block, 8, count.index)
  map_public_ip_on_launch = true
  availability_zone = "us-east-1${count.index + 1}"
  tags = {
    Name = "terraform-subnet-public-${count.index + 1}"
  }
}

# Create EC2 Instance
resource "aws_instance" "name_2" {
  ami = "ami-0de53d8956e8dcf80"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.name_1[0].id
  tags = {
    Name = "terraform-instance"
  }
}

