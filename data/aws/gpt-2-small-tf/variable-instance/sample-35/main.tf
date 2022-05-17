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
  description = "AMI id for EC2 instance"
  default = "ami-0915bcb5fa77e4892"
}

# variable called ec2_instance_count which is number type with default 1variable "instance_count" {
  description = "Number of EC2 instances to create"
  default = 1
}

# Create EC2 Instance with ami set to var.ec2_ami_id, count as var.ec2_instance_count and instance type t3.microvariable "instance_type" {
  description = "Instance type for EC2 instance"
  default = "t3.micro"
}

