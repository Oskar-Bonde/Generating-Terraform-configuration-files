provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# AWS provider block in region us-east-1 region and default profile
provider "aws" {
  region  = "us-east-1"
}

# Create Security Group called vpc-ssh. It allows port 22 ingress and all ports and ip egress
# from the internet.
resource "aws_security_group" "name_0" {
  name        = "vpc-ssh"
  description = "Allow SSH from the internet"
  vpc_id      = "${aws_vpc.default.id}"

  # SSH access from anywhere
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # outbound internet access
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

