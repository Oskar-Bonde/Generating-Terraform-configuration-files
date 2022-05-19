terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS block
provider "aws" {
  region = var.region
}

# Create Security Group
resource "aws_security_group" "name_0" {
  name        = "terraform-example-security-group"
  description = "Used in the terraform"

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
    Name = "terraform-example"
  }
}

# Create EC2 Instance 
resource "aws_instance" "name_1" {
  ami           = var.ami
  instance_type = var.instance_type

  key_name = var.key_name

  security_groups = [aws_security_group.name_0.name]

  tags = {
    Name = "terraform-example"
  }
}

