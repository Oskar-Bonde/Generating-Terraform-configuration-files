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

# Create variable declaration for each resource
variable "name_0" {
  description = "Name of the resource"
}

# variable blockvariable "name_0" {
  description = "Name of the resource block"
}

# make variablevariable declaration for each resource
variable "name_1" {
  description = "Type of resource"
}

# create variable blockvariable "name_0" {
  description = "Name of the resource block"
}

# Create Security Groupvariable "name_0" {
  description = "Name of the security group"
}

# Create Security Group
}

# Create EC2 Instance
}

