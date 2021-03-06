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
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
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
  subnet_id     = "subnet-id"
  vpc_security_group_ids = [aws_security_group.name_0.id]

  tags = {
    Name = "instance-name"
  }
}

