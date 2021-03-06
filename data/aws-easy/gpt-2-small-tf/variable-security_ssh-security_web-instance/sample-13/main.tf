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
  default = "us-east-1"
}

# variable blockvariable "aws_availability_zones" {
  default = "us-east-1a,us-east-1b,us-east-1c"
}

# make variablevariable "aws_instance_type" {
  default = "t2.micro"
}

# create variable blockvariable "aws_instance_count" {
  default = "3"
}

# Create Security Groupvariable "aws_security_group" {
  default = "default"
}

# Create Security Groupvariable "aws_instance_type" {
  default = "t2.micro"
}

# Create EC2 Instance
}

