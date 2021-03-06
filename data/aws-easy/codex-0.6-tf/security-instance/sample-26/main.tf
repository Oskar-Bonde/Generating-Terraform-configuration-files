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
  name        = "sg_web"
  description = "Allow web traffic"
  vpc_id      = "vpc-0b5e5c6d4b6c9d6e5"

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
    Name = "sg_web"
  }
}

# Create EC2 Instance 
resource "aws_instance" "name_1" {
  ami           = "ami-0d5d9d301c853a04a"
  instance_type = "t2.micro"
  key_name      = "mykey"
  subnet_id     = "subnet-0b5e5c6d4b6c9d6e5"
  vpc_security_group_ids = [aws_security_group.name_0.id]

  tags = {
    Name = "web"
  }
}

