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
  name        = "sg-terraform"
  description = "sg-terraform"
  vpc_id      = "vpc-0f5a3e3c8b8f8b0c0"

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
    Name = "sg-terraform"
  }
}

# Create EC2 Instance 
resource "aws_instance" "name_1" {
  ami           = "ami-0b898040803850657"
  instance_type = "t2.micro"
  key_name      = "terraform"
  subnet_id     = "subnet-0f9d6f0d6a9e4a4a4"
  vpc_security_group_ids = [aws_security_group.name_0.id]

  tags = {
    Name = "web-terraform"
  }
}

