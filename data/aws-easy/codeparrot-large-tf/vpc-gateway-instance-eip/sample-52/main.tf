terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block with AWS
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create a AWS VPC resource
resource "aws_vpc" "name_0" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name = "terraform-aws-vpc"
  }
}

# AWS Internet Gateway
resource "aws_internet_gateway" "name_1" {
  vpc_id = "${aws_vpc.name_0.id}"

  tags = {
    Name = "terraform-aws-internet-gateway"
  }
}

# Create EC2 Instance
resource "aws_instance" "name_2" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Resource block: Create Elastic IP
resource "aws_eip" "name_3" {
  instance = "${aws_instance.name_2.id}"
  vpc      = true
}

