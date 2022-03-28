terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block AWS in region var.name_0
provider "aws" {
  region = var.name_0
}

# Create variable called aws_region with default "us-east-1"
variable "name_0" {
  default = "us-east-1"
}

# variable called ec2_ami_id with default ami-0915bcb5fa77e4892
variable "name_1" {
  default = "ami-0915bcb5fa77e4892"
}

# create number variable called ec2_instance_count with default 1
variable "name_2" {
  default = 1
}

# creaet variable ec2_instance_type with default t3.micro
variable "name_3" {
  default = "t3.micro"
}

# Create Security Group for SSH Traffic, allow port 22 ingress and all IP and ports egress
resource "aws_security_group" "name_4" {
  name        = "ssh_sg"
  description = "Allow SSH traffic"
  vpc_id      = var.vpc_id

  ingress {
    from_port       = 22
    to_port         = 22
    protocol        = "tcp"
    cidr_blocks     = ["0.0.0.0/0"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
}

# Create Security Group for web traffic
resource "aws_security_group" "name_5" {
  name        = "web_sg"
  description = "Allow web traffic"
  vpc_id      = var.vpc_id

  ingress {
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    cidr_blocks     = ["0.0.0.0/0"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
}

# Create EC2 Instance with variable ec2 ami and instance type. Use vpc shh and vpc web security group ids
resource "aws_instance" "name_6" {
  ami           = var.name_1
  instance_type = var.name_3
  count         = var.name_2

  vpc_security_group_ids = [
    aws_security_group.name_4.id,
    aws_security_group.name_5.id,
  ]
}

