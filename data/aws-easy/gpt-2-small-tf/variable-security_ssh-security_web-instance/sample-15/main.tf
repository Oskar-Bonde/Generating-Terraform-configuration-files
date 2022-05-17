terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block AWS
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create variable for each resource
variable "name_2" {
  default = "10.0.0.0/16"
}

# variable block# with an EC2 instance
variable "name_2" {
  default = "10.0.1.0/24"
}

# make variable# with an EC2 instance
variable "name_2" {
  default = "10.0.2.0/24"
}

# create variable blockvariable "name_2" {
  default = "10.0.3.0/24"
}

# Create Security Groupresource
resource "aws_security_group" "name_3" {
  name        = "ec2demo"
  description = "Allow inbound traffic for ECS2 Demo"
  vpc_id      = "${var.name_2}"

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

# Create Security Groupresource
resource "aws_security_group" "name_4" {
  name        = "ec2demo_sg"
  description = "Allow inbound traffic for ECS2 Demo"
  vpc_id      = "${var.name_2}"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr
}

# Create EC2 Instance
}

