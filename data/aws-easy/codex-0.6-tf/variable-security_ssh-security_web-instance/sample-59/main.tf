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
  description = "Type of instance"
  default     = "t2.micro"
}

# variable block
variable "name_1" {
  description = "Amazon Linux 2 AMI"
  default     = "ami-0bbe6b35405ecebdb"
}

# make variable
variable "name_2" {
  description = "Name of the SSH key pair"
  default     = "terraform"
}

# create variable block
variable "name_3" {
  description = "Number of instances to launch"
  default     = "1"
}

# Create Security Group
resource "aws_security_group" "name_4" {
  name        = "allow_http"
  description = "Allow HTTP traffic"
  vpc_id      = "vpc-0e9b9b7e8b0f2c7c2"

  ingress {
    description = "HTTP"
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

  tags = {
    Name = "allow_http"
  }
}

# Create Security Group
resource "aws_security_group" "name_5" {
  name        = "allow_ssh"
  description = "Allow SSH traffic"
  vpc_id      = "vpc-0e9b9b7e8b0f2c7c2"

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
    Name = "allow_ssh"
  }
}

# Create EC2 Instance
resource "aws_instance" "name_6" {
  ami           = var.name_1
  instance_type = var.name_0
  key_name      = var.name_2
  count         = var.name_3

  security_groups = [
    aws_security_group.name_4.name,
    aws_security_group.name_5.name,
  ]

  tags = {
    Name = "web"
  }
}

