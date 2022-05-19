terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block
provider "aws" {
  region = "us-east-1"
}

# Create a AWS VPC
resource "aws_vpc" "name_0" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support = true
  tags = {
    Name = "terraform-vpc"
  }
}

# Create AWS subnets resource
resource "aws_subnet" "name_1" {
  count = 2
  vpc_id = "${aws_vpc.name_0.id}"
  cidr_block = "${cidrsubnet(aws_vpc.name_0.cidr_block, 8, count.index)}"
  availability_zone = "${data.aws_availability_zones.available.names[count.index]}"
  map_public_ip_on_launch = true
  tags = {
    Name = "terraform-subnet-${count.index}"
  }
}

# Create EC2 Instance
resource "aws_instance" "name_2" {
  ami = "ami-0d5d9d301c853a04a"
  instance_type = "t2.micro"
  subnet_id = "${element(aws_subnet.name_1.*.id, count.index)}"
  associate_public_ip_address = true
  count = 2
  tags = {
    Name = "terraform-instance-${count.index}"
  }
}

