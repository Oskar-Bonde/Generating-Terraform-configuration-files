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

# variable called ec2_instance_type which is number type with default 1
variable "name_1" {
  type = "string"
}

# Create EC2 Instance with ami set to var.name_0, count as var.ec2_instance_count and instance type t3.micro
# Instance type t2.micro instance with default ami-0ff8a91507f77f867
resource "aws_instance" "name_2" {
  ami           = var.name_0
  instance_type = var.name_1
  count         = var.ec2_instance_count
  instance_count = var.ec2_instance_count + var.name_1
  instance_type = var.name_1
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]
  subnet_id = var.ec2_subnet_id
  key_name = var.ec2_key_name
  tags = {
    Name = "ec2-demo-${count.index}"
    role = "ec2-demo"
    dc = "eu-west-1"
  }
}

