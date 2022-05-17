provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# AWS provider block with AWS
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create Security Group
resource "aws_security_group" "name_0" {
  name        = "terraform_example_sg"
  description = "Used in the terraform"
  vpc_id      = "${aws_vpc.terraform-vpc-privatedns1-example-com.id}"
}

