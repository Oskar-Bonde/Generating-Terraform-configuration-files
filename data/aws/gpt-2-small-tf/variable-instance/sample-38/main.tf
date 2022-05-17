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
  type = "string"
}

# variable called ec2_instance_count which is number type with default 1#
variable "name_2" {
  type = "string"
}

# Create EC2 Instance with ami set to var.name_0, count as var.name_2 and instance type t3.microvariable "ec2_instance_type"
variable "name_2" {
  type = "string"
}

