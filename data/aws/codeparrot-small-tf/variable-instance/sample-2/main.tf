terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS in region "us-east-1"
provider "aws" {
  region = "us-east-1"
}

# Create variable called ec2_ami_id with default ami-0915bcb5fa77e4892 and type string
variable "name_0" {
  type = "string"
}

# variable called ec2_instance_count which is number type with default 1

# variable called ec2_key_name with default name with default value
variable "name_1" {
  type = "string"
}

# Create EC2 Instance with ami set to var.name_0, count as var.name_1 and instance type t3.micro
resource "aws_instance" "name_2" {
  ami           = var.name_0
  instance_type = var.ec2_instance_type
  count         = var.name_1
  key_name      = var.ec2_key_name
  subnet_id     = var.ec2_subnet_id
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]
  associate_public_ip_address = true
  source_dest_check = false
  tags = {
    Name = var.ec2_instance_name
  }
}

