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
  name        = "terraform_example_sg"
  description = "Used in the terraform"
  vpc_id      = "${aws_vpc.terraform-vpc-privatedns1-example-com.id}"

  # HTTP access from anywhere
  ingress {
    from_port   = 80
    to_port     = 80
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

