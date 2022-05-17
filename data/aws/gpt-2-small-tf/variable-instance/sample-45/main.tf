terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS in region "us-east-1"
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create variable called ec2_ami_id with default ami-0915bcb5fa77e4892 and type string
variable "name_0" {
  type    = "string"
  default = "ami-0ff8a91507f77f867"
}

# variable called ec2_instance_count which is number type with default 1variable "ec2_instance_count" {
  type    = "string"
  default = "1"
}

# Create EC2 Instance with ami set to var.name_0, count as var.ec2_instance_count and instance type t3.micro
variable "name_1" {
  type    = "string"
  default = "t3.micro"
}

