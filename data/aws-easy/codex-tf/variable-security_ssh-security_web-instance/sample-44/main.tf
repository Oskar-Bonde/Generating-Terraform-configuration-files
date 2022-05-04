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
  default = "t2.micro"
}

# variable block
variable "name_1" {
  default = "ami-0b898040803850657"
}

# make variable
variable "name_2" {
  default = "mykey"
}

# create variable block
variable "name_3" {
  default = 1
}

# Create Security Group
resource "aws_security_group" "name_4" {
  name = "my_security_group"
  description = "Allow SSH and HTTP traffic"
  vpc_id = "vpc-0f4b8d4c2e4e0f9d0"

  ingress {
    description = "SSH"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTP"
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

  tags = {
    Name = "my_security_group"
  }
}

# Create Security Group
resource "aws_security_group" "name_5" {
  name = "my_security_group2"
  description = "Allow SSH and HTTP traffic"
  vpc_id = "vpc-0f4b8d4c2e4e0f9d0"

  ingress {
    description = "SSH"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTP"
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

  tags = {
    Name = "my_security_group2"
  }
}

# Create EC2 Instance
resource "aws_instance" "name_6" {
  ami = var.name_1
  instance_type = var.name_0
  key_name = var.name_2
  count = var.name_3
  security_groups = [aws_security_group.name_4.name, aws_security_group.name_5.name]
}

