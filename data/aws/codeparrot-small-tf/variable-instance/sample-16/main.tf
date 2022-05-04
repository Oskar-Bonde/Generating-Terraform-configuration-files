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

# Create variable called ec2_ami_id with default ami-0915bcb5fa77e4892 and type string "ami-0ff8a91507f77f867"
variable "name_0" {
  type = "map"
  default = {
    us-east-1 = "ami-0915bcb5fa77e4892"
    us-west-2 = "ami-0ff8a91507f77f867"
  }
}

# variable called ec2_instance_count which is number type with default 1
variable "name_1" {
  type = "map"
  default = {
    us-east-1 = "1"
    us-west-2 = "2"
  }
}

# Create EC2 Instance with ami set to var.name_0, count as var.name_1 and instance type t3.micro
resource "aws_instance" "name_2" {
  ami           = var.name_0
  instance_type = var.ec2_instance_type
  count         = var.name_1
  instance_count  = var.name_1
  ami_id          = var.name_0
  subnet_id     = var.ec2_subnet_id
  vpc_security_group_ids = [
    aws_security_group.ec2_sg.id,
    aws_security_group.ec2_sg_egress.id,
    aws_security_group.ec2_sg_ingress.id
  ]
  key_name = var.ec2_key_name
  tags = {
    Name = "terraform-ec2-demo-${count.index}"
    owner = "Terraform"
    expire-on = "2016-07-15"
  }
}

