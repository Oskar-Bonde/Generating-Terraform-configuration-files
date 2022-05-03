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
  default = "ami-0915bcb5fa77e4892"
  type    = string
}

# variable called ec2_instance_count which is number type with default 1
variable "name_1" {
  default = 1
  type    = number
}

# Create EC2 Instance with ami set to var.name_0, count as var.name_1 and instance type t3.micro
resource "aws_instance" "name_2" {
  ami           = var.name_0
  count         = var.name_1
  instance_type = "t3.micro"
}

