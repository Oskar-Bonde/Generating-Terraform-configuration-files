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

# Create variable declaration for each resource
variable "name_1" {
  description = "Name of the resource"
}

# variable blockvariable "name_1" {
  description = "Name of the resource"
}

# make variablevariable declaration for each resource
variable "name_1" {
  description = "Name of the resource"
}

# create variable blockvariable "name_1" {
  description = "Name of the resource"
}

# Create Security Groupvariable "name_1" {
  description = "Name of the security group"
}

# Create Security Group
resource "aws_security_group" "name_2" {
  name        = "${var.name_1}"
  description = "Security Group for ECS Demo"
  vpc_id      = "${var.vpc_id}"

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0
}

# Create EC2 Instance
}

