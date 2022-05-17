terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS in region "us-east-1"
provider "aws" {
  region = "us-east-1"
}

# create workspace ip group, give it a name. Set a rule with source 150.24.14.0/24 and description LA
# resource "aws_security_group" "name_0" {
#   name        = "terraform_example"
#   description = "Terraform example security group"
# }

# create security group for the instance
resource "aws_security_group" "name_0" {
  name        = "terraform_example"
  description = "Terraform example security group"
  vpc_id      = "${aws_vpc.terraform_vpc.id}"
}

