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

# Create variable with default value
variable "name_0" {
  default = "hello"
}

# variable block
variable "name_1" {
  default = "hello"
}

# make variable
variable "name_2" {
  default = "hello"
}

# create variable block
variable "name_3" {
  default = "hello"
}

# Create Security Group
resource "aws_security_group" "name_4" {
  name        = "terraform_example"
  description = "Used in the terraform"
  vpc_id      = "${aws_vpc.default.id}"

  # SSH access from anywhere
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

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

# Create Security Groupresource
resource "aws_security_group_rule" "name_5" {
  security_group_id = "${aws_security_group.name_4.id}"
  type              = "ingress"
  protocol          = "-1"
  from_port         = 0
  to_port          
}

# Create EC2 Instance
}

