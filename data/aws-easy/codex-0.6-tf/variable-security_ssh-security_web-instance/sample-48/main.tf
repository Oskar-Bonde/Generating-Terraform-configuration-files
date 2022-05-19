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
  default = "ami-0d5d9d301c853a04a"
}

# make variable
variable "name_2" {
  default = "terraform"
}

# create variable block
variable "name_3" {
  type = "list"
  default = ["sg-0e9f8d7d8c8c9b7a2"]
}

# Create Security Group
resource "aws_security_group" "name_4" {
  name        = "allow_all"
  description = "Allow all inbound traffic"
  vpc_id      = "vpc-0e9f8d7d8c8c9b7a2"

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
resource "aws_security_group" "name_5" {
  name        = "allow_http"
  description = "Allow HTTP inbound traffic"
  vpc_id      = "vpc-0e9f8d7d8c8c9b7a2"

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
  instance_type = var.name_0
  key_name      = var.name_2
  security_groups = var.name_3

  tags = {
    Name = "web"
  }
}

