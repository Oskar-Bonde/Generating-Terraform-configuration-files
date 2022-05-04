terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block AWS in region var.name_0 and default profile
provider "aws" {
  region = var.name_0
}

# Create variable called aws_region with default "us-east-1" and type string
variable "name_0" {
  default = "us-east-1"
  type    = string
}

# variable called ec2_ami_id with default ami-0915bcb5fa77e4892 and type string
variable "name_1" {
  default = "ami-0915bcb5fa77e4892"
  type    = string
}

# create number variable called ec2_instance_count with default 1 and type number
variable "name_2" {
  default = 1
  type    = number
}

# creaet variable ec2_instance_type with default t3.micro and type string
variable "name_3" {
  default = "t3.micro"
  type    = string
}

# Create Security Group for SSH Traffic, allow port 22 ingress and all IP and ports egress
resource "aws_security_group" "name_4" {
  name        = "allow_ssh"
  description = "Allow SSH Traffic"
  vpc_id      = "vpc-0d9b9f6f9c8f7a8e2"

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

# Create Security Group for web traffic
resource "aws_security_group" "name_5" {
  name        = "allow_web"
  description = "Allow HTTP Traffic"
  vpc_id      = "vpc-0d9b9f6f9c8f7a8e2"

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
    Name = "allow_web"
  }
}

# Create EC2 Instance with variable ec2 ami and instance type. Use vpc shh and vpc web security group ids
resource "aws_instance" "name_6" {
  ami           = var.name_1
  instance_type = var.name_3
  count         = var.name_2
  vpc_security_group_ids = [aws_security_group.name_4.id, aws_security_group.name_5.id]
}

