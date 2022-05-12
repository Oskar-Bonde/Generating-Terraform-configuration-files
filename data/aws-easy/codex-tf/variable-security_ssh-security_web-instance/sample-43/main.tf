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
  type = list(string)
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
  name        = "web"
  description = "Allow web traffic"
  vpc_id      = var.name_0

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTP"
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
    Name = "web"
  }
}

# Create Security Group
resource "aws_security_group" "name_5" {
  name        = "db"
  description = "Allow db traffic"
  vpc_id      = var.name_0

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTP"
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
    Name = "db"
  }
}

# Create EC2 Instance
resource "aws_instance" "name_6" {
  ami           = var.name_3
  instance_type = var.name_2
  subnet_id     = var.name_1[0]

  tags = {
    Name = "web"
  }

  security_groups = [aws_security_group.name_4.id]
}

