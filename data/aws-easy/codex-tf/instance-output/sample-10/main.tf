terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS block
provider "aws" {
  region = var.aws_region
}

# Create EC2 Instance 
resource "aws_instance" "name_0" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = var.subnet_id
  vpc_security_group_ids = [var.security_group_id]
  tags = {
    Name = "EC2 Instance"
  }
}

# Output block
output "name_1" {
  value = aws_instance.name_0.id
}

