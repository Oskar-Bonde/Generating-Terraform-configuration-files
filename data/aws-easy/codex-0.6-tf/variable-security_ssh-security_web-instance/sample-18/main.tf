terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block AWS
provider "aws" {
  region = "us-east-1"
}

# Create variable 
variable "name_0" {
  description = "Instance type"
  default     = "t2.micro"
}

# variable block
variable "name_1" {
  description = "Amazon Linux AMI"
  default     = "ami-0b33d91d"
}

# make variable
variable "name_2" {
  description = "Name of an existing EC2 KeyPair to enable SSH access to the instance"
  default     = "mykey"
}

# create variable block
variable "name_3" {
  description = "List of security group IDs to assign to the instance"
  default     = ["sg-0d4b4f8c"]
}

# Create Security Group
resource "aws_security_group" "name_5" {
  name        = "terraform-example"
  description = "Used in the terraform"

  ingress {
    description = "SSH"
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

  tags = {
    Name = "terraform-example"
  }
}

# Create Security Group
resource "aws_security_group" "name_5" {
  name        = "terraform-example"
  description = "Used in the terraform"

  ingress {
    description = "SSH"
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

  tags = {
    Name = "terraform-example"
  }
}

# Create EC2 Instance
resource "aws_instance" "name_6" {
  ami           = var.name_1
  instance_type = var.name_0
  key_name      = var.name_2
  security_groups = var.name_3

  tags = {
    Name = "terraform-example"
  }
}

