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
  description = "AWS region to create resources in"
  default     = "us-east-1"
}

# variable blockvariable "aws_availability_zones" {
  description = "AWS availability zones to create resources in"
  default     = "us-east-1b,us-east-1c"
}

# make variablevariable "aws_key_name" {
  description = "Name of the SSH keypair to use in AWS"
  default     = "default"
}

# create variable blockvariable "aws_key_path" {
  description = "Path to the SSH private key to use in AWS"
 
}

# Create Security Group
}

# Create Security Group
}

# Create EC2 Instance
}

