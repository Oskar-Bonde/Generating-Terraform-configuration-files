# Terraform Block with the AWS provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS in region var.name_0
provider "aws" {
  region  = var.name_0
  profile = "default"
}

# Create variable called aws_region with default "us-east-1"
variable "name_0" {
  type        = string
  default     = "us-east-1"
}

# Create variable called ec2_ami_id with default ami-0915bcb5fa77e4892
variable "name_1" {
  description = "AMI ID"
  type        = string
  default     = "ami-0915bcb5fa77e4892" 
}

# variable called ec2_instance_count which is number type with default 1
variable "name_2" {
  description = "EC2 Instance Count"
  type        = number
  default     = 1
}


# Create Security Group that allows port 22 and all outbound IP and ports
resource "aws_security_group" "name_3" {
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

# Create Security Group that allows port 80, 443 and all IP and Ports outbound
resource "aws_security_group" "name_4" {
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

# Create EC2 Instance with ami set to var.name_1, count as var.name_2 and instance type t3.micro
resource "aws_instance" "name_5" {
  ami                    = var.name_1
  instance_type          = "t3.micro"
  key_name               = "terraform-key"
  count                  = var.name_2
  vpc_security_group_ids = [aws_security_group.name_3.id, aws_security_group.name_4.id]
  tags = {
    "Name" = "myec2vm"
  }
}


