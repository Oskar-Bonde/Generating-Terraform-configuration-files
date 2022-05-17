terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS in region "us-east-1"
provider "aws" {
  region = "us-east-1"
}

# Create Security Group that allows port 22 inbound and all outbound ports
resource "aws_security_group" "name_0" {
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"
  vpc_id      = "vpc-0b6a1a6c"

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

# Create EC2 Instance with ami-0915bcb5fa77e4892 and instance type t3.micro. Use vpc ssh security group id
resource "aws_instance" "name_1" {
  ami           = "ami-0915bcb5fa77e4892"
  instance_type = "t3.micro"
  key_name      = "aws-key"
  vpc_security_group_ids = [aws_security_group.name_0.id]

  tags = {
    Name = "web"
  }
}

