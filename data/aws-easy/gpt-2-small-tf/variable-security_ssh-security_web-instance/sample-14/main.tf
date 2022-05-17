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
variable "name_0" {
  description = "CIDR for the VPC"
  default     = "10.0.0.0/16"
}

# variable block with an EC2 instance
variable "name_1" {
  description = "CIDR for the VPC"
  default     = "10.0.1.0/24"
}

# make variable available in variable block with an EC2 instance
variable "name_3" {
  description = "CIDR for the VPC"
  default     = "10.0.2.0/24"
}

# create variable block with an EC2 instance
variable "name_3" {
  description = "CIDR for the VPC"
  default     = "10.0.3.0/24"
}

# Create Security Group
resource "aws_security_group" "name_4" {
  name        = "ec2demo"
  description = "Allow SSH from anywhere"
  vpc_id      = "${var.name_0}"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

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
}

# Create Security Group
resource "aws_security_group" "name_5" {
  name        = "ec2demo_sg"
  description = "Allow SSH from anywhere"
  vpc_id      = "${var.name_0}"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.
}

# Create EC2 Instance
}

