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
  default = "10.0.0.0/16"
}

# variable blockvariable "name_1" {
  default = "10.0.1.0/24"
}

# make variablevariable
variable "name_1" {
  default = "10.0.2.0/24"
}

# create variable blockvariable "name_1" {
  default = "10.0.3.0/24"
}

# Create Security Group
}

# Create Security Group
}

# Create EC2 Instance
}

