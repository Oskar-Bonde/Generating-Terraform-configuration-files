terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block with the AWS instance
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create a AWS VPC to launch our instances into
resource "aws_vpc" "name_0" {
  cidr_block = "10.0.0.0/16"
}

# Create AWS subnets resource for VPC
resource "aws_subnet" "name_1" {
  vpc_id            = "${aws_vpc.name_0.id}"
  cidr_block        = "10.0.1.0/24"
  availability_zone = "eu-west-1a"
}

# Create EC2 Instance
resource "aws_instance" "name_2" {
  ami           = "ami-0ff8a91507f77f867"
  instance_type = "t2.micro"
}

