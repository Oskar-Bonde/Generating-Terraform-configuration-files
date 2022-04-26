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
}

# AWS Internet Gateway 
resource "aws_internet_gateway" "name_1" {
  vpc_id = "${aws_vpc.name_0.id}"
}

# Create EC2 Instance
resource "aws_instance" "name_2" {
  ami           = "ami-55a7ea65"
  instance_type = "m3.medium"
  subnet_id     = "${aws_vpc.name_0.id}"
}

# Resource block: Create Elastic IP
resource "aws_eip" "name_3" {
  instance   = "${aws_instance.name_2.id}"
  vpc        = "true"
}

