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
  vpc_id      = "vpc-0a6f9b6a8a8b5a6b1"

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
  ami           = "ami-0b69ea66ff7391e80"
  instance_type = "t2.micro"
  key_name      = "mykey"
  vpc_security_group_ids = [aws_security_group.name_0.id]
  subnet_id     = "subnet-0b6f9b6a8a8b5a6b1"
  tags = {
    Name = "web"
  }
}

