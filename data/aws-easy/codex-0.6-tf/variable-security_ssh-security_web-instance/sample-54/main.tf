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
  type = string
}

# variable block
variable "name_1" {
  type = string
  default = "t2.micro"
}

# make variable
variable "name_2" {
  type = string
  default = "ami-0bbe6b35405ecebdb"
}

# create variable block
variable "name_3" {
  type = number
  default = 1
}

# Create Security Group
resource "aws_security_group" "name_4" {
  name = "terraform-sg"
  description = "terraform security group"
  vpc_id = "vpc-0d3f4c4d9c9f9e2c4"

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Create Security Group
resource "aws_security_group" "name_5" {
  name = "terraform-sg2"
  description = "terraform security group2"
  vpc_id = "vpc-0d3f4c4d9c9f9e2c4"

  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Create EC2 Instance
resource "aws_instance" "name_6" {
  ami = var.name_2
  instance_type = var.name_1
  count = var.name_3
  security_groups = [aws_security_group.name_4.name, aws_security_group.name_5.name]
  tags = {
    Name = "terraform-instance-${var.name_0}"
  }
}

