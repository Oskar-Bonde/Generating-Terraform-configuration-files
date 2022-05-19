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
variable "name_1" {
  default = "t2.micro"
}

# make variable
variable "name_2" {
  default = "ami-0d5d9d301c853a04a"
}

# create variable block
variable "name_3" {
  default = "terraform-key"
}

# Create Security Group
resource "aws_security_group" "name_4" {
  name        = "terraform_sg"
  description = "Allow SSH and HTTP traffic"
  vpc_id      = "vpc-0d1e8d6f8b4e4a1f4"

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
    Name = "terraform_sg"
  }
}

# Create Security Group
resource "aws_security_group" "name_5" {
  name        = "terraform_sg_2"
  description = "Allow SSH and HTTP traffic"
  vpc_id      = "vpc-0d1e8d6f8b4e4a1f4"

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
    Name = "terraform_sg_2"
  }
}

# Create EC2 Instance
resource "aws_instance" "name_6" {
  ami           = var.name_2
  instance_type = var.name_1
  key_name      = var.name_3
  vpc_security_group_ids = [aws_security_group.name_4.id]
  subnet_id     = "subnet-0b9e8d6f8b4e4a1f4"

  tags = {
    Name = "terraform_instance"
  }
}

