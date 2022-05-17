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
  name        = "terraform-example"
  description = "Used in the terraform"

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
    Name = "terraform-example"
  }
}

# Create EC2 Instance with ami-0915bcb5fa77e4892 and instance type t3.micro. Use vpc ssh security group id
resource "aws_instance" "name_1" {
  ami           = "ami-0915bcb5fa77e4892"
  instance_type = "t3.micro"
  key_name      = "ec2-keypair"
  security_groups = [aws_security_group.name_0.id]
}

