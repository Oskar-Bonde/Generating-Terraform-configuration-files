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
  name        = "sg-example"
  description = "Security Group Example"
  vpc_id      = "vpc-0b8f8d6e2b7f9b9c9"

  ingress {
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
    Name = "sg-example"
  }
}

# Create EC2 Instance 
resource "aws_instance" "name_1" {
  ami           = "ami-0b898040803850657"
  instance_type = "t2.micro"
  key_name      = "key-pair-example"
  subnet_id     = "subnet-0e8d7c8e8d8c9b9c9"
  vpc_security_group_ids = [aws_security_group.name_0.id]

  tags = {
    Name = "example"
  }
}

