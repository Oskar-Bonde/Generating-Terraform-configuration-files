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

# create workspace ip group, give it a name. Set a rule with source 150.24.14.0/24 and description LAUNCH_IP_GROUP_NAME
resource "aws_security_group" "name_0" {
  name        = "terraform_example"
  description = "Used in terraform"
  vpc_id      = "${aws_vpc.terraform.id}"
}

