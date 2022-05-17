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

# variable blockvariable "name_1" {
  description = "AWS availability zones to create resources in."
  default     = "us-east-1a,us-east-1b,us-east-1c"
}

# make variable available in variable block
variable "name_1" {
  description = "AWS availability zones to create resources in."
  default     = "us-east-1a,us-east-1b,us-east-1c"
}

# create variable blockvariable "aws_vpc_cidr" {
  description = "CIDR block to use for VPC"
}

# Create Security Group
}

# Create Security Group
}

# Create EC2 Instance
}

