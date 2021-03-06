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

# Create variable
variable "name_0" {
  default = "us-east-1"
}

# variable blockvariable "name_1" {
  default = "ec2demo"
}

# make variable# variable
variable "name_1" {
  default = "ec2demo"
}

# create variable blockvariable "name_1" {
  default = "ec2demo"
}

# Create Security Groupvariable "security_group" {
  default = "default"
}

# Create Security Group#
resource "aws_security_group" "name_2" {
  name        = "ec2demo"
  description = "Security group for ECS2 Demo"
  vpc_id      = "${aws_vpc.main.id}"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.
}

# Create EC2 Instance
}

