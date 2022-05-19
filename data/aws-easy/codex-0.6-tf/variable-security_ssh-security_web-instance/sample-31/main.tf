terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block AWS
provider "aws" {
  region = var.name_0
}

# Create variable 
variable "name_0" {
  type = string
}

# variable block
variable "name_1" {
  type = string
}

# make variable
variable "name_2" {
  type = string
}

# create variable block
variable "name_3" {
  type = string
}

# Create Security Group
resource "aws_security_group" "name_4" {
  name        = "allow_ssh"
  description = "Allow SSH access"
  vpc_id      = aws_vpc.default.id

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

# Create Security Group
resource "aws_security_group" "name_5" {
  name        = "allow_http"
  description = "Allow HTTP access"
  vpc_id      = aws_vpc.default.id

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

# Create EC2 Instance
resource "aws_instance" "name_6" {
  ami           = var.name_1
  instance_type = var.name_2
  key_name      = var.name_3
  vpc_security_group_ids = [aws_security_group.name_4.id, aws_security_group.name_5.id]

  tags = {
    Name = "web"
  }
}

