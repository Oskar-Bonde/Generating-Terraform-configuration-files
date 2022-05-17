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
  description = "Name of the resource"
}

# variable blockvariable "name_1" {
  description = "ID of the resource"
}

# make variable
variable "name_1" {
  description = "ID of the resource"
}

# create variable blockvariable "name_1" {
  description = "ID of the resource"
}

# Create Security Groupvariable "security_group" {
  description = "ID of the security group"
}

# Create Security Groupvariable "security_group_id" {
  description = "ID of the security group"
}

# Create EC2 Instance
}

