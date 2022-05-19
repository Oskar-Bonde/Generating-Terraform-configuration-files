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
  name        = "allow_all"
  description = "Allow all inbound traffic"
  vpc_id      = "vpc-0a8f9d7c8f4a0c7d4"

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

# Create EC2 Instance 
resource "aws_instance" "name_1" {
  ami           = "ami-0d5d9d301c853a04a"
  instance_type = "t2.micro"
  security_groups = [aws_security_group.name_0.name]
  key_name = "mykey"
  subnet_id = "subnet-0e8c8e7b6a0b8c8b6"
  tags = {
    Name = "web"
  }
}

