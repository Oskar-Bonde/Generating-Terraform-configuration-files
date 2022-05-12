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
  default = "us-east-1"
}

# variable block
variable "name_1" {}
variable "name_2" {}

# Create resource
resource "aws_instance" "name_8" {
  ami           = "ami-0d5d9d301c853a04a"
  instance_type = "t2.micro"
  key_name      = "mykey"
  subnet_id     = "subnet-0d5d9d301c853a04a"
  tags = {
    Name = "myec2"
  }
}

# make variable
output "name_4" {
  value = "${aws_instance.name_8.public_ip}"
}

# create variable block
variable "name_5" {
  default = "ami-0d5d9d301c853a04a"
}

# Create Security Group
resource "aws_security_group" "name_6" {
  name        = "allow_ssh"
  description = "Allow SSH access"
  vpc_id      = "vpc-0d5d9d301c853a04a"

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

# Create Security Group
resource "aws_security_group" "name_7" {
  name        = "allow_http"
  description = "Allow HTTP access"
  vpc_id      = "vpc-0d5d9d301c853a04a"

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

# Create EC2 Instance
resource "aws_instance" "name_8" {
  ami           = "${var.name_5}"
  instance_type = "t2.micro"
  key_name      = "mykey"
  subnet_id     = "subnet-0d5d9d301c853a04a"
  tags = {
    Name = "myec2"
  }

  security_groups = [
    "${aws_security_group.name_6.id}",
    "${aws_security_group.name_7.id}"
  ]
}

