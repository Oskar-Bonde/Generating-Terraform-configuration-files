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
  default = "vpc-0f0d8d2e8b7e9b1c0"
}

# variable block
variable "name_1" {
  default = "subnet-0f7a5e5d2e8b9b1c0"
}

# make variable
variable "name_2" {
  default = "ami-0a63f96eff0d8d2e8"
}

# create variable block
variable "name_3" {
  default = "t2.micro"
}

# Create Security Group
resource "aws_security_group" "name_4" {
  name        = "web_sg"
  description = "Allow HTTP and SSH access"
  vpc_id      = var.name_0

  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

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
    Name = "web_sg"
  }
}

# Create Security Group
resource "aws_security_group" "name_5" {
  name        = "db_sg"
  description = "Allow HTTP and SSH access"
  vpc_id      = var.name_0

  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

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
    Name = "db_sg"
  }
}

# Create EC2 Instance
resource "aws_instance" "name_6" {
  ami           = var.name_2
  instance_type = var.name_3
  subnet_id     = var.name_1
  key_name      = "mykey"
  security_groups = [aws_security_group.name_4.name]

  tags = {
    Name = "web_server"
  }
}

