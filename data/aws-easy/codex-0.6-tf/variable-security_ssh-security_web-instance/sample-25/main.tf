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
variable "name_2" 
}

# make variable
variable "name_3" {
  default = "t2.micro"
}

# create variable block
variable "name_4" {
  default = "ami-0b33d91d"
}

# Create Security Group
resource "aws_security_group" "name_5" {
  name        = "allow_http"
  description = "Allow HTTP traffic"
  vpc_id      = "vpc-0d9b9c6f"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_http"
  }
}

# Create Security Group
resource "aws_security_group" "name_6" {
  name        = "allow_ssh"
  description = "Allow SSH traffic"
  vpc_id      = "vpc-0d9b9c6f"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_ssh"
  }
}

# Create EC2 Instance
resource "aws_instance" "name_7" {
  ami           = var.name_4
  instance_type = var.name_3

  security_groups = [
    aws_security_group.name_5.name,
    aws_security_group.name_6.name,
  ]

  tags = {
    Name = "terraform-example"
  }
}

