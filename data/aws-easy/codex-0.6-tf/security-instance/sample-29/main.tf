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
  description = "sg-example"
  vpc_id      = "vpc-example"

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
    Name = "sg-example"
  }
}

# Create EC2 Instance 
resource "aws_instance" "name_1" {
  ami           = "ami-example"
  instance_type = "t2.micro"
  key_name      = "key-example"
  subnet_id     = "subnet-example"
  vpc_security_group_ids = [aws_security_group.name_0.id]

  tags = {
    Name = "example"
  }
}

