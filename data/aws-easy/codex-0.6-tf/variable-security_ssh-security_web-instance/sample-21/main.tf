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
  default = "t2.micro"
}

# variable block
variable "name_1" {
  default = "ami-0b33d91d"
}

# make variable
variable "name_2" {
  default = "terraform"
}

# create variable block
variable "name_3" {
  default = ["sg-0c0e0d6b"]
}

# Create Security Group
resource "aws_security_group" "name_4" {
  name        = "terraform-web"
  description = "Allow HTTP and SSH traffic"
  vpc_id      = "vpc-0e9f9e6e"

  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

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
    Name = "terraform-web"
  }
}

# Create Security Group
resource "aws_security_group" "name_5" {
  name        = "terraform-db"
  description = "Allow MySQL traffic"
  vpc_id      = "vpc-0e9f9e6e"

  ingress {
    description = "MySQL"
    from_port   = 3306
    to_port     = 3306
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
    Name = "terraform-db"
  }
}

# Create EC2 Instance
resource "aws_instance" "name_6" {
  ami           = var.name_1
  instance_type = var.name_0
  key_name      = var.name_2
  security_groups = var.name_3

  tags = {
    Name = "terraform-web"
  }
}

