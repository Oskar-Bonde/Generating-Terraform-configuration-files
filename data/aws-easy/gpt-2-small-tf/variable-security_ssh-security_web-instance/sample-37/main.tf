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
variable "name_2" {
  description = "CIDR for the VPC"
  default     = "10.0.0.0/16"
}

# variable block with an EC2 instance
variable "name_1" {
  description = "ID of the VPC"
  default     = "vpc-c01"
}

# make variablevariable for each resource
variable "name_2" {
  description = "CIDR for the VPC"
  default     = "10.0.1.0/24"
}

# create variable blockvariable "name_2" {
  description = "CIDR for the VPC"
  default 
}

# Create Security Group
}

# Create Security Group
}

# Create EC2 Instance
}

