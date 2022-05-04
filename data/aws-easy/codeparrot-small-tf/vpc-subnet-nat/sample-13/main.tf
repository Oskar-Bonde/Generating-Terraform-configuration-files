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

# Create AWS subnets resourcevariable
resource "aws_subnet" "name_1" {
  vpc_id            = "${aws_vpc.name_0.id}"
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a"
}

# create a nat gateway
resource "aws_nat_gateway" "name_2" {
  allocation_id = "${aws_eip.nat.id}"
  subnet_id     = "${aws_subnet.name_1.id}"
}

