provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block, region set to us east 1 region
provider "aws" {
  region  = "us-east-1"
}

# Resource, an aws security group with the following ingress ports: 80, 443, 8080, 8081, 7080, 7081. All use cidr block 0.0.0.0/0
resource "aws_security_group" "name_0" {
  name        = "ec2demo"
  description = "Allow inbound traffic for ${var.aws_region}"
  vpc_id      = "${aws_vpc.main.id}"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
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

