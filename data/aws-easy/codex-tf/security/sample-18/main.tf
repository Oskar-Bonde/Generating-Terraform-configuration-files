terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# AWS provider block
provider "aws" {
  region = "us-east-1"
}

# Create Security Group 
resource "aws_security_group" "name_0" {
  name        = "allow_all"
  description = "Allow all inbound traffic"
  vpc_id      = "vpc-0a8d3e3a4c4c4d4d4"

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

