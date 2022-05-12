terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block AWS
provider "aws" {
  region = "us-east-1"
}

# Create variable 
variable "name_0" {
  default = "us-east-1"
}

# variable block
variable "name_1" {}
variable "name_2" {}

# Create a resource
resource "aws_instance" "name_8" {
  ami           = "ami-0d5d9d301c853a04a"
  instance_type = "t2.micro"
}

# make variable
variable "name_4" {
  default = "ami-0d5d9d301c853a04a"
}

# create variable block
variable "name_5" {
  default = "t2.micro"
}

# Create Security Group
resource "aws_security_group" "name_7" {
  name        = "allow_all"
  description = "Allow all inbound traffic"
  vpc_id      = "vpc-0b8d8b6c0f0e9e6c5"

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_all"
  }
}

# Create Security Group
resource "aws_security_group" "name_7" {
  name        = "allow_all"
  description = "Allow all inbound traffic"
  vpc_id      = "vpc-0b8d8b6c0f0e9e6c5"

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_all"
  }
}

# Create EC2 Instance
resource "aws_instance" "name_8" {
  ami           = "ami-0d5d9d301c853a04a"
  instance_type = "t2.micro"
  security_groups = [aws_security_group.name_7.name]
}

