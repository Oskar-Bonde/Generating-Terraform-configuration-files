terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block: aws in us east 1
provider "aws" {
  region = "us-east-1"
}

# Create a AWS VPC resource with private network 10.0.0.0/16
resource "aws_vpc" "name_0" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support = true
  tags = {
    Name = "terraform-vpc"
  }
}

# AWS Internet Gateway with vpc id
resource "aws_internet_gateway" "name_1" {
  vpc_id = aws_vpc.name_0.id
  tags = {
    Name = "terraform-igw"
  }
}

# Create EC2 Instance, use ami-047a51fa27710816e and t2.micro
resource "aws_instance" "name_2" {
  ami = "ami-047a51fa27710816e"
  instance_type = "t2.micro"
  subnet_id = aws_vpc.name_0.id
  tags = {
    Name = "terraform-instance"
  }
}

# Resource block: Create Elastic IP that uses vpc, ec2 instance id and depends on internet gateway
resource "aws_eip" "name_3" {
  vpc = true
  instance = aws_instance.name_2.id
  depends_on = [aws_internet_gateway.name_1]
}

