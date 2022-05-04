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
  name        = "sg-name"
  description = "sg-description"
  vpc_id      = "vpc-id"

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
    Name = "sg-name"
  }
}

# Create EC2 Instance 
resource "aws_instance" "name_1" {
  ami           = "ami-id"
  instance_type = "t2.micro"
  key_name      = "key-name"
  security_groups = [aws_security_group.name_0.name]
  subnet_id     = "subnet-id"

  tags = {
    Name = "ec2-name"
  }
}

