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
# resource "aws_security_group" "workspace_ip_group" {
#   name        = "workspace_ip_group"
#   description = "workspace ip group"
# }

# create security group for the t2.micro instance
resource "aws_security_group" "name_0" {
  name        = "t2_micro"
  description = "t2.micro security group"
  vpc_id      = "${aws_vpc.default.id}"
}

