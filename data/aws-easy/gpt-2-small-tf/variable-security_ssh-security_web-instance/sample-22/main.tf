terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block AWS
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create variable for each resource
variable "name_0" {
  description = "CIDR block for VPC"
  type        = "string"
}

# variable blockvariable "name_1" {
  description = "CIDR blocks for VPC"
  type        = "list"
}

# make variablevariable for each resource
variable "name_1" {
  description = "CIDR blocks for VPC"
  type        = "list"
}

# create variable blockvariable "name_1" {
  description = "CIDR blocks for VPC"
  type        = "list"
}

# Create Security Groupvariable "vpc_sg_id" {
  description = "Security Group ID for VPC"
  type        = "string"
}

# Create Security Group
}

# Create EC2 Instance
}

