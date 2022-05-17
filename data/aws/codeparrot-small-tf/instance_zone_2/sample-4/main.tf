# Terraform Block with the AWS provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block AWS with region "us-east-1"
provider "aws" {
  region = "us-east-1"
}

# Resource, make aws instance. Use ami-038f1ca1bd58a5790, instance type t2.small and availability zone us-east-1e

# resource "aws_instance" "t2" {
#   ami           = "ami-038f1ca1bd58a5790"
#   instance_type = "t2.small"
#   availability_zone = "us-east-1e"
# }

# resource "aws_eip" "ip" {
#   instance = "${aws_instance.ec2demo.id}"
#   vpc      = true
# }

# resource "aws_internet_gateway" "igw" {
#   vpc_id = "${aws_vpc.vpc.id}"
# }

# resource "aws_route_table" "r" {
#   vpc_id = "${aws_vpc.vpc.id}"
#   route {
#     cidr_block = "0.0.0.0/0"
#     gateway_id = "${aws_internet_gateway.igw.id}"
#   }
# }

# resource "aws_subnet" "subnet" {
#   vpc_id = "${aws_vpc.vpc.id}"
#   cidr_block = "${element(split(",", var.subnet_cidrs), count.index)}"
#   availability_zone = "us-east-1e"
#   count = "${length(split(",", var.subnet_cidrs))}"
# }

# resource "aws_security_group" "sg" {
#   name = "sg"
#   description = "Allow all inbound traffic"
#   vpc_id = "${aws_vpc.vpc.id}"
#   ingress {
#     from_port = 0
#     to_port = 65535
#     protocol = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
# }

# resource "aws_instance" "t2" {
#   ami           = "ami-0ff8a91507f77f867"
#   instance_type = "t2.small"
#   availability_zone = "us-east-1e"
#   count = "${length(split(",", var.subnet_cidrs))}"
# }

# resource "aws_eip" "ip" {
#   instance = "${aws_instance.ec2demo.id}"
#   vpc      = true
# }

# resource "aws_internet_gateway" "igw" {
#   vpc_id = "${aws_vpc.vpc.id}"
#   route {
#     cidr_block = "0.0.0.0/0"
#     gateway_id = "${aws_internet_gateway.igw.id}"
#   }
# }

# resource "aws_route_table" "r" {
#   vpc_id = "${aws_vpc.vpc.id}"
#   route {
#     cidr_block = "0.0.0.0/0"
#     gateway_id = "${aws_internet_gateway.igw.id}"
#   }
# }

# resource "aws_subnet"
}

