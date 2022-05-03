# Terraform Block with the AWS provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS block
provider "aws" {
  region  = "us-east-1"
}


# Create Security Group
resource "aws_security_group" "name_0" {
  name        = "vpc-ssh"
  description = "Dev VPC SSH"
  ingress {
    description = "Allow Port 22"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    description = "Allow all IP and Ports outbound"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Create EC2 Instance 
resource "aws_instance" "name_1" {
  ami                    = "ami-0915bcb5fa77e4892" 
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.name_0.id]

}