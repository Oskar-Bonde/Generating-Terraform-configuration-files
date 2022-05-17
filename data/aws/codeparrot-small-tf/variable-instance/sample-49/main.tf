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
# variable aws_instance_type with default ami-0ff8a91507f77f867
variable "name_0" {
  default = "ami-0915bcb5fa77e4892"
}

# variable called ec2_instance_count which is number type with default 1
variable "name_1" {
  default = 1
}

# Create EC2 Instance with ami set to var.name_0, count as var.name_1 and instance type t3.micro
resource "aws_instance" "name_2" {
  ami           = var.name_0
  instance_type = var.ec2_instance_type
  count         = var.name_1
  instance_count  = var.name_1
  spot_price     = var.ec2_spot_price
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]
  subnet_id = var.subnet_id
  key_name      = var.key_name

  tags = {
    Name = "terraform-ec2-demo-${count.index}"
    role = "ec2-demo"
    dc = "1"
  }
}

