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

# Create a AWS VPC resource
resource "aws_vpc" "name_0" {
  cidr_block = "10.0.0.0/16"
}

# make a vpn gatewayvariable
resource "aws_internet_gateway" "name_1" {
  vpc_id = "${aws_vpc.name_0.id}"
}

# create a customer gateway
resource "aws_vpn_gateway" "name_2" {
  vpc_id = "${aws_vpc.name_0.id}"
  # the customer gateway is created by terraform.tfvars
  # https://www.terraform.io/docs/configuration/variables.html
}

