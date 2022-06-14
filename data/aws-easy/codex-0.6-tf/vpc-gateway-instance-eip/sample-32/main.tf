terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create a AWS VPC resource
resource "aws_vpc" "name_0" {
  cidr_block = "10.0.0.0/16"
}

# AWS Internet Gateway 
resource "aws_internet_gateway" "name_1" {
  vpc_id = aws_vpc.name_0.id
}

# Create EC2 Instance
resource "aws_instance" "name_2" {
  ami           = "ami-0d5d9d301c853a04a"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow_http.id]
  subnet_id = aws_subnet.public.id
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
