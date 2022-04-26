# Terraform Block with AWS provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block AWS
provider "aws" {
  region  = var.name_0
  profile = "default"
}

# Create variable 
variable "name_0" {
  type = string
  default = "us-east-1"
}

# variable block
variable "name_1" {
  type = string  
  default = "ami-0915bcb5fa77e4892"
}

# make variable
variable "name_2" {
  description = "EC2 Instance Count"
  type = number
  default = 1
}

# create variable block
variable "name_3" {
  description = "EC2 Instance Type"
  type = string
  default = "t3.micro"
}

# Create Security Group
resource "aws_security_group" "name_4" {
  name        = "vpc-ssh"
  description = "Dev VPC SSH"
  ingress {
    description = "Allow Port 22"
    
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    description = "Allow all IP and Ports outbound"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Create Security Group
resource "aws_security_group" "name_5" {
  name        = "vpc-web"
  description = "Dev VPC Web"

  ingress {
    description = "Allow Port 80"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow Port 443"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Allow all IP and Ports outbound"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Create EC2 Instance
resource "aws_instance" "name_6" {
  ami           = var.name_1 
  instance_type = var.name_3
  vpc_security_group_ids = [aws_security_group.name_4.id, aws_security_group.name_5.id]
}




