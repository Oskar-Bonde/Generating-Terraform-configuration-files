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
  type = "string"
  default = "vpc-0f3f2e7c3e0d8d8c3"
}

# variable block
variable "name_1" {
  type = "list"
  default = ["subnet-0e2e4a8a4a1c0d8f9", "subnet-0b9d2f9f9b8e8f8c8"]
}

# make variable
variable "name_2" {
  type = "string"
  default = "terraform-key"
}

# create variable block
variable "name_3" {
  type = "string"
  default = "t2.micro"
}

# Create Security Group
resource "aws_security_group" "name_4" {
  name        = "allow_http"
  description = "Allow HTTP traffic"
  vpc_id      = var.name_0

  ingress {
    description = "HTTP from VPC"
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
resource "aws_security_group" "name_5" {
  name        = "allow_ssh"
  description = "Allow SSH traffic"
  vpc_id      = var.name_0

  ingress {
    description = "SSH from VPC"
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
resource "aws_instance" "name_6" {
  ami           = "ami-0f9cf0b4e4e4c4c4c"
  instance_type = var.name_3
  key_name      = var.name_2
  subnet_id     = var.name_1[0]

  security_groups = [
    aws_security_group.name_4.id,
    aws_security_group.name_5.id,
  ]

  tags = {
    Name = "web"
  }
}

