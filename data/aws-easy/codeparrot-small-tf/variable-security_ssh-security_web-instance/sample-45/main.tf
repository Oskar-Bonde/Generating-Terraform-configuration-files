terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block AWS
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create variable with default value
variable "name_0" {
  default = "hello"
}

# variable block
variable "name_1" {
  default = "hello"
}

# make variable
variable "name_2" {
  default = "hello"
}

# create variable blockresource
resource "aws_instance" "name_3" {
  ami           = "ami-0ff8a91507f77f867"
  instance_type = "t2.micro"
}

# Create Security Groupresource
resource "aws_security_group" "name_4" {
  name        = "test"
  description = "test"
  vpc_id      = "${aws_vpc.default.id}"
}

# Create Security Group
resource "aws_security_group" "name_5" {
  name        = "test_ssh"
  description = "test_ssh"
  vpc_id      = "${aws_vpc.default.id}"
}

# Create EC2 Instance
}

