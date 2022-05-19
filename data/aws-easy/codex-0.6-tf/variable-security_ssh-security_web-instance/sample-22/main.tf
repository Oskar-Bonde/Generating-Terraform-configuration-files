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
  default = "ami-0b33d91d"
}

# variable block
variable "name_1" {
  default = "t2.micro"
}

# make variable
variable "name_2" {
  default = "terraform-key"
}

# create variable block
variable "name_3" {
  default = "~/.ssh/terraform-key.pub"
}

# Create Security Group
resource "aws_security_group" "name_4" {
  name        = "allow_ssh"
  description = "Allow SSH access"
  vpc_id      = "vpc-0b8d9f6a"

  ingress {
    description = "SSH"
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
  vpc_id      = "vpc-0b8d9f6a"

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
    Name = "allow_http"
  }
}

# Create EC2 Instance
resource "aws_instance" "name_6" {
  ami           = var.name_0
  instance_type = var.name_1
  key_name      = var.name_2

  security_groups = [
    aws_security_group.name_4.name,
    aws_security_group.name_5.name,
  ]

  tags = {
    Name = "web"
  }
}

