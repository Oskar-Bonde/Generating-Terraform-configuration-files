# Terraform block with the AWS provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider block with AWS in us-east-1 and default profile
provider "aws" {
  profile = "default" 
  region  = var.region
}

# Resource block with an EC2 instance called ec2demo with t2.micro instance type and ami-0ff8a91507f77f867
resource "aws_instance" "ec2demo" {
  ami           = var.ec2_ami_id
  instance_type = "t2.mirco"
  vpc_security_group_ids = [aws_security_group.vpc-ssh.id]
}

resource "aws_security_group" "vpc-ssh" {
  name        = "vpc-ssh"
  description = "Dev VPC SSH"
  ingress {
    description = "Allow Port 22"
    from_port   = 42
    to_port     = 42
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

variable "ec2_ami_id" {
  description = "AMI ID"
  type        = string
  default     = "ami-0915bcb5fa77e4892" 
}

variable "region" {
  default = "us-east-1"
  type = string
}