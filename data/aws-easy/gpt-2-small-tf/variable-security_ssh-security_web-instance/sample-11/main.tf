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
  description = "CIDR block for VPC"
  default     = "10.0.0.0/16"
}

# variable block with an EC2 instance
variable "name_3" {
  description = "ID of the VPC"
  default     = "vpc-c0d7d9"
}

# make variablevariable for each resource
variable "name_2" {
  description = "CIDR block for VPC"
  default     = "10.0.1.0/24"
}

# create variable block
variable "name_3" {
  description = "ID of the VPC"
  default     = "vpc-c0d7d9"
}

# Create Security Groupvariable "security_group" {
  description = "ID of the Security Group"
  default     = "sg-c0d7d9"
}

# Create Security Group#
resource "aws_security_group" "name_4" {
  name        = "sg-c0d7d9"
  description = "Allow all inbound traffic"
  vpc_id      = "${var.name_3}"

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.
}

# Create EC2 Instance
}

