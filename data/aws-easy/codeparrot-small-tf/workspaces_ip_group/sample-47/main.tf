terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS block with AWS
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# create a workspace ip group
resource "aws_security_group" "name_0" {
  name        = "ec2demo_nsg"
  description = "Used in the terraform"
  vpc_id      = var.vpc_id
}

