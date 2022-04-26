# Terraform Block with AWS provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block
provider "aws" {
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
  ami                    = "ami-047a51fa27710816e"
  instance_type          = "t2.micro" 
}

# Resource block: Create Elastic IP
resource "aws_eip" "name_3" {
  instance = aws_instance.name_2.id
  vpc      = true
  depends_on = [aws_internet_gateway.name_1]
}


