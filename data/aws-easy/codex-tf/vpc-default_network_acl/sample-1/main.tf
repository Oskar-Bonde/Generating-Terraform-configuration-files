terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider block
provider "aws" {
  region  = "us-east-1"
  profile = "profile"
}

# Create a AWS VPC resource 
resource "aws_vpc" "name_0" {
  cidr_block = "10.0.0.0/16"
  tags {
    Name = "terraform-testacc-default-route-table-vpc"
  }
}

# create a default network acl
resource "aws_default_network_acl" "name_1" {
  default_network_acl_id = "${aws_vpc.name_0.default_network_acl_id}"
  vpc_id = "${aws_vpc.name_0.id}"
}

