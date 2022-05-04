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

# Create a resource
resource "aws_instance" "name_8" {
  ami           = "ami-0b898040803850657"
  instance_type = "t2.micro"
}

# make variable
variable "name_4" {
  default = "t2.micro"
}

# create variable block
variable "name_5" {
  default = "ami-0b898040803850657"
}

# Create Security Group
resource "aws_security_group" "name_7" {
  name        = "my_security_group"
  description = "Allow SSH and HTTP traffic"
  vpc_id      = "vpc-0b898040803850657"

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
    Name = "my_security_group"
  }
}

# Create Security Group
resource "aws_security_group" "name_7" {
  name        = "my_security_group"
  description = "Allow SSH and HTTP traffic"
  vpc_id      = "vpc-0b898040803850657"

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
    Name = "my_security_group"
  }
}

# Create EC2 Instance
resource "aws_instance" "name_8" {
  ami           = "ami-0b898040803850657"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.name_7.id]

  tags = {
    Name = "my_instance"
  }
}

