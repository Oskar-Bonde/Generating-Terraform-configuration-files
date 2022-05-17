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

# Create variable for the instance
variable "name_2" {
  default = "t2.micro"
}

# variable block# with an EC2 instance
variable "name_1" {
  default = "3"
}

# make variablevariable
variable "name_2" {
  default = "t2.micro"
}

# create variable blockvariable "name_1" {
  default = "3"
}

# Create Security Group
}

# Create Security Group
}

# Create EC2 Instance
}

