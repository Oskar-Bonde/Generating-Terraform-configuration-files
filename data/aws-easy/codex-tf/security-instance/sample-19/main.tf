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
  name        = "sg-test"
  description = "sg-test"
  vpc_id      = "vpc-12345678"

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
    Name = "sg-test"
  }
}

# Create EC2 Instance 
resource "aws_instance" "name_1" {
  ami           = "ami-12345678"
  instance_type = "t2.micro"
  key_name      = "key-test"
  subnet_id     = "subnet-12345678"

  security_groups = [
    aws_security_group.name_0.id
  ]

  tags = {
    Name = "ec2-test"
  }
}

