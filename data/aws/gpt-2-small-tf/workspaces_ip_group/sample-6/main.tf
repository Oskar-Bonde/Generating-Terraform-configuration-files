terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS in region "us-east-1"
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# create workspace ip group, give it a name. Set a rule with source 150.24.14.0/24 and description LA.
resource "aws_key_pair" "name_0" {
  key_name   = "source"
  public_key = "${file("${var.source_public_key}")}"
}

