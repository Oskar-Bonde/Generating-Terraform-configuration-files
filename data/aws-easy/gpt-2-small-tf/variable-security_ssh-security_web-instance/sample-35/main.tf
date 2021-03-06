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

# Create variable
variable "name_0" {
  description = "Name of the instance"
}

# variable blockvariable "instance_type" {
  description = "Instance type for the instance"
}

# make variablevariable "instance_count" {
  description = "Number of instances to create"
  default     = 1
}

# create variable blockvariable "instance_count_percent" {
  description = "Number of instances to create"
  default    
}

# Create Security Group
}

# Create Security Group
}

# Create EC2 Instance
}

