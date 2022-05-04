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

# Create a AWS VPC resourceresource block
resource "aws_vpc" "name_0" {
  cidr_block = "10.0.0.0/16"
}

# AWS Internet Gateway
resource "aws_internet_gateway" "name_1" {
  vpc_id = "${aws_vpc.name_0.id}"
}

# Create AWS route table
resource "aws_route_table" "name_2" {
  vpc_id = "${aws_vpc.name_0.id}"
}

# Create route resourceresource block
resource "aws_route_table_association" "name_3" {
  subnet_id      = "${aws_subnet.default.id}"
  route_table_id = "${aws_route_table.name_2.id}"
}

