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

# Create resource
resource "aws_instance" "name_8" {
  ami           = "ami-0f65671a86f061fcd"
  instance_type = "t2.micro"
  tags = {
    Name = "terraform-instance"
  }
}

# make variable
variable "name_4" {
  default = "t2.micro"
}

# create variable block
variable "name_5" {
  default = "ami-0f65671a86f061fcd"
}

# Create Security Group
resource "aws_security_group" "name_7" {
  name        = "terraform-web"
  description = "Allow HTTP and SSH access"
  vpc_id      = "vpc-0f65671a86f061fcd"

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
    Name = "terraform-web"
  }
}

# Create Security Group
resource "aws_security_group" "name_7" {
  name        = "terraform-web"
  description = "Allow HTTP and SSH access"
  vpc_id      = "vpc-0f65671a86f061fcd"

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
    Name = "terraform-web"
  }
}

# Create EC2 Instance
resource "aws_instance" "name_8" {
  ami           = "ami-0f65671a86f061fcd"
  instance_type = "t2.micro"
  security_groups = [aws_security_group.name_7.name]
  tags = {
    Name = "terraform-instance"
  }
}

