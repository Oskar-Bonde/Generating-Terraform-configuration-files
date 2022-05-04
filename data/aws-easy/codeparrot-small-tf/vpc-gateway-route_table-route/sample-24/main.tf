terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block with AWS
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create a AWS VPC resourcevariable
variable "name_0" {
  default = "10.0.0.0/16"
}

# AWS Internet Gateway
variable "name_1" {
  default = "igw-terraform-internet"
}

# Create AWS route table
variable "name_2" {
  default = "public"
}

# Create route resourcevariable
variable "name_3" {
  default = "public"
}

