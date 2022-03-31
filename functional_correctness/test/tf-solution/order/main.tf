terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider block with AWS in us-east-1 and default profile
provider "aws" {
  profile = "default" 
  region  = var.name_3
}

# Resource block with an EC2 instance called ec2demo with t2.micro instance type and ami-0ff8a91507f77f867
resource "aws_instance" "name_0" {
  ami           = var.name_2
  instance_type = "t2.mirco"
  vpc_security_group_ids = [aws_security_group.name_1.id]
}

resource "aws_security_group" "name_1" {
  name        = "vpc-ssh"
  description = "Dev VPC SSH"
  egress {
    description = "Allow all IP and Ports outbound"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "Allow Port 22"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

variable "name_2" {
  description = "AMI ID"
  type        = string
  default     = "ami-0915bcb5fa77e4892" 
}

variable "name_3" {
  default = "us-east-1"
  type = string
}

output "name_4" {
  value = aws_security_group.name_1.id
}