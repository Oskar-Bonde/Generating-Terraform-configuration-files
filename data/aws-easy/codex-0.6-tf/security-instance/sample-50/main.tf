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
  name        = "allow_ssh"
  description = "Allow SSH access"
  vpc_id      = "vpc-0f9b9c6c"

  ingress {
    description = "SSH from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
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

# Create EC2 Instance 
resource "aws_instance" "name_1" {
  ami           = "ami-0b898040803850657"
  instance_type = "t2.micro"
  key_name      = "mykey"
  vpc_security_group_ids = [aws_security_group.name_0.id]
  subnet_id = "subnet-0d8c0d6f"
  tags = {
    Name = "web"
  }
}

