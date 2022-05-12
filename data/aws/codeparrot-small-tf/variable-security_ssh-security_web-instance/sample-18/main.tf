terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block AWS in region var.aws_region and default profile
provider "aws" {
  profile = "default"
  region  = var.aws_region
}

# Create variable called aws_region with default "us-east-1" and type string
# aws_region = "us-east-1"

# Create variable called aws_profile with default "default" and type string
variable "name_0" {
  type = "string"
}

# variable called ec2_ami_id with default ami-0915bcb5fa77e4892 and type string
variable "name_1" {
  type = "string"
}

# create number variable called ec2_instance_count with default 1 and type number
variable "name_2" {
  default = 1
}

# creaet variable ec2_instance_type with default t3.micro and type string# aws_instance_type with default t2.micro
variable "name_3" {
  default = "t3.micro"
}

# Create Security Group for SSH Traffic, allow port 22 ingress and all IP and ports egress
# from all internet to the internet
resource "aws_security_group" "name_4" {
  name        = "ec2-instance"
  description = "Security group for EC2 instances"
  vpc_id      = var.vpc_id

  # SSH traffic from anywhere
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # HTTP traffic from anywhere
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # outbound internet access
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Create Security Group for web traffic, allow port 80 and 443 ingress and all outbound traffic
}

# Create EC2 Instance with variable ec2 ami and instance type. Use vpc shh and vpc web security group ids
}

