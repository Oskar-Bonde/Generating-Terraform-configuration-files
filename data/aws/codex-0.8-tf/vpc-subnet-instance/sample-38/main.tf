terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block: aws in us east 1 and default profile
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

# Create AWS subnets resource in private network 10.0.1.0/24 and map public ip on launch set true
resource "aws_subnet" "name_1" {
  vpc_id = aws_vpc.name_0.id
  cidr_block = "10.0.1.0/24"
  map_public_ip_on_launch = true
  tags = {
    Name = "terraform-subnet-public"
  }
}

# Create EC2 Instance with subnet, ami-047a51fa27710816e and t2.micro
resource "aws_instance" "name_2" {
  ami = "ami-047a51fa27710816e"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.name_1.id
  tags = {
    Name = "terraform-ec2-instance"
  }
}

