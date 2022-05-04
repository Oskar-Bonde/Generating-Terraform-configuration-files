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

# Create variable called ec2_ami_id with default ami-0915bcb5fa77e4892 and type string "t2.micro"
variable "name_0" {
  type = "string"
}

# variable called ec2_instance_count which is number type with default 1
variable "name_1" {
  type = "string"
}

# Create EC2 Instance with ami set to var.name_0, count as var.name_1 and instance type t3.micro
resource "aws_instance" "name_2" {
  ami           = var.name_0
  instance_type = var.ec2_instance_type
  count         = var.name_1
  instance_count = var.name_1
  instance_type = var.ec2_instance_type
  spot_price = var.ec2_spot_price
  vpc_security_group_ids = [
    aws_security_group.ec2_sg.id,
    aws_security_group.ec2_sg_2.id,
    aws_security_group.ec2_sg_3.id,
  ]
  subnet_id = var.ec2_subnet_id
  key_name = var.ec2_key_name
  tags = {
    Name = "ec2-demo-${count.index}"
    role = "ec2-demo"
    Environment = var.environment
    Project = "terraform"
  }
}

