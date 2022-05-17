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
  default     = "us-east-1a,us-east-1b,us-east-1c"
}

# make variablevariable "aws_availability_zones" {
  description = "AWS availability zones to create resources in"
  default     = "us-east-1a,us-east-1b,us-east-1c"
}

# create variable blockvariable "aws_availability_zones" {
  description = "AWS availability zones to create resources in"
  default     = "us-east-1a,us-east-1b,us-east-1c"
}

# Create Security Groupvariable "aws_security_group" {
  description = "AWS security group to create resources in"
  default     = "default"
}

# Create Security Group
}

# Create EC2 Instance
}

