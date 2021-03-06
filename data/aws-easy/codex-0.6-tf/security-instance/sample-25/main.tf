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
  name        = "sg_ssh"
  description = "Allow SSH access"
  vpc_id      = "vpc-0c8f6f7b7d8b8a3c3"

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
    Name = "sg_ssh"
  }
}

# Create EC2 Instance 
resource "aws_instance" "name_1" {
  ami           = "ami-0bbe6b35405ecebdb"
  instance_type = "t2.micro"
  key_name      = "mykey"
  vpc_security_group_ids = [aws_security_group.name_0.id]
  subnet_id     = "subnet-0a4b9e7c4e0f2b8a3"
  tags = {
    Name = "instance_1"
  }
}

