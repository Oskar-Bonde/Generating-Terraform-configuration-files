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
  name        = "terraform-sg"
  description = "Allow SSH and HTTP access"
  vpc_id      = "vpc-0f5fba66"

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTP"
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
    Name = "terraform-sg"
  }
}

# Create EC2 Instance 
resource "aws_instance" "name_1" {
  ami           = "ami-0b59bfac6be064b78"
  instance_type = "t2.micro"
  key_name      = "terraform-key"
  subnet_id     = "subnet-0b8e9b9a"
  vpc_security_group_ids = [aws_security_group.name_0.id]

  tags = {
    Name = "terraform-instance"
  }
}

