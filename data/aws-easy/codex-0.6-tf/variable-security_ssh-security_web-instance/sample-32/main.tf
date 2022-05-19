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
  description = "Instance type"
  default     = "t2.micro"
}

# variable block
variable "name_1" {
  description = "Amazon Linux 2 AMI"
  default     = "ami-0b69ea66ff7391e80"
}

# make variable
variable "name_2" {
  description = "Name of an existing EC2 KeyPair to enable SSH access to the instance"
  default     = "terraform"
}

# create variable block
variable "name_3" {
  description = "List of security group IDs to assign to the instance"
  default     = ["sg-0a9f0b7e6d9e8c6a8"]
}

# Create Security Group
resource "aws_security_group" "name_4" {
  name        = "allow_ssh"
  description = "Allow SSH access from anywhere"
  vpc_id      = "vpc-0e2b3c1f8d1b8f8c9"

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
  description = "Allow HTTP access from anywhere"
  vpc_id      = "vpc-0e2b3c1f8d1b8f8c9"

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
  ami           = var.name_1
  instance_type = var.name_0
  key_name      = var.name_2
  vpc_security_group_ids = [aws_security_group.name_4.id, aws_security_group.name_5.id]

  tags = {
    Name = "web"
  }
}

