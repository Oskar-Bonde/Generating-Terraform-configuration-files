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
  count = 2
  vpc_id = aws_vpc.name_0.id
  cidr_block = "10.0.${count.index}.0/24"
  availability_zone = "us-east-1${count.index}"
  map_public_ip_on_launch = true
  tags = {
    Name = "public-${count.index}"
  }
}

# Create EC2 Instance
resource "aws_instance" "name_2" {
  ami = "ami-0b898040803850657"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.name_1[0].id
  tags = {
    Name = "web"
  }
}

