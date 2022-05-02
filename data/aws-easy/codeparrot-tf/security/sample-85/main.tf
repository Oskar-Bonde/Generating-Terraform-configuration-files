provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# AWS provider block with AWS
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create Security Group
resource "aws_security_group" "name_0" {
  name        = "ec2demo"
  description = "Security group for EC2 instances"
  vpc_id      = "${aws_vpc.demo.id}"

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
}

