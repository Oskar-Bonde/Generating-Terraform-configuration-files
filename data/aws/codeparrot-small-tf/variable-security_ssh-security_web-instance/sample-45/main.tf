terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block AWS in region var.name_0 and default profile
provider "aws" {
  profile = "default"
  region  = var.name_0
}

# Create variable called aws_region with default "us-east-1" and type string
variable "name_0" {
  type = string
}

# variable called ec2_ami_id with default ami-0915bcb5fa77e4892 and type string

variable "name_1" {
  type = string
}

# create number variable called ec2_instance_count with default 1 and type number
resource "aws_instance" "name_2" {
  ami = var.name_1
  instance_type = var.name_3
  count = var.ec2_instance_count
}

# creaet variable ec2_instance_type with default t3.micro and type string

variable "name_3" {
  type = string
}

# Create Security Group for SSH Traffic, allow port 22 ingress and all IP and ports egress

resource "aws_security_group" "name_5" {
  name        = "ec2_instance_sg"
  description = "Security Group for EC2 instance with default t2.micro and type string"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 4443
    to_port     = 4443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = -1
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
}

# Create Security Group for web traffic, allow port 80 and 443 ingress and all outbound traffic

resource "aws_security_group" "name_5" {
  name        =
}

# Create EC2 Instance with variable ec2 ami and instance type. Use vpc shh and vpc web security group ids

}

