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
  description = "AWS region to create resources in."
  default     = "us-east-1"
}

# variable blockvariable "aws_availability_zones" {
  description = "AWS availability zones to create resources in."
  default     = "us-east-1b,us-east-1c"
}

# make variablevariable "aws_key_name" {
  description = "Name of the SSH keypair to use in AWS."
  default     = "default"
}

# create variable blockvariable "aws_key_path" {
  description = "Path to the private key specified in AWS."
  default     = "~/.ssh/id_rsa.pub"
}

# Create Security Groupvariable "aws_security_group" {
  description = "Security group to allow inbound traffic for AWS instances."
  default     = "default"
}

# Create Security Group
}

# Create EC2 Instance
}

