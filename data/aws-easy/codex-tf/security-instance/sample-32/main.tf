terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS block
provider "aws" {
  region = "us-east-1"
}

# Create Security Group
resource "aws_security_group" "name_0" {
  name        = "sg-tf-test"
  description = "Security Group for Terraform Test"
  vpc_id      = "vpc-0d8c8b6a1b0c7b8e8"

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
    Name = "sg-tf-test"
  }
}

# Create EC2 Instance 
resource "aws_instance" "name_1" {
  ami           = "ami-0b898040803850657"
  instance_type = "t2.micro"
  key_name      = "tf-test"
  security_groups = [aws_security_group.name_0.name]

  tags = {
    Name = "web-tf-test"
  }
}

