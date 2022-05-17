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
  default = "9e99a7f-4d0f-4a0f-94b3-84ce6feb1db4"
}

# variable called ec2_instance_count which is number type with default 1
variable "name_1" {
  type    = "string"
  default = "1"
}

# Create EC2 Instance with ami set to var.name_0, count as var.name_1 and instance type t3.micro
variable "name_2" {
  type    = "string"
  default = "t3.micro"
}

