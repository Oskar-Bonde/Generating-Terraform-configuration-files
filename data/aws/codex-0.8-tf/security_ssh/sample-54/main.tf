terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# AWS provider block in region us-east-1 
provider "aws" {
  region = "us-east-1"
}

# Create Security Group called vpc-ssh. It allows port 22 ingress and all ports and ip egress
resource "aws_security_group" "name_0" {
  name        = "vpc-ssh"
  description = "Allow SSH access"
  vpc_id      = "vpc-0b5d5a6c9e6c8a8e9"

  ingress {
    description = "SSH from anywhere"
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
    Name = "vpc-ssh"
  }
}

