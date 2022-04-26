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
  cidr_block = "10.1.0.0/16"

  tags = {
    Name = "terraform-testacc-instance-source-dest-enable"
  }
}

# Create AWS subnets resource
resource "aws_subnet" "name_1" {
  cidr_block = "10.1.1.0/24"
  vpc_id     = "${aws_vpc.name_0.id}"

  tags = {
    Name = "tf-acc-instance-source-dest-enable"
  }
}

# Create EC2 Instance
resource "aws_instance" "name_2" {
  ami           = "ami-c5eabbf5"
  instance_type = "t2.micro"
  subnet_id     = "${aws_subnet.name_1.id}"

  tags = {
    Name = "tf-acc-instance-source-dest-enable"
  }
}

