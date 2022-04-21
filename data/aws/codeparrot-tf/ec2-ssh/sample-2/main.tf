terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS in region "us-east-1"
provider "aws" {
  region  = "us-east-1"
}

# Create Security Group that allows port 22 inbound and all outbound ports/CIDR
resource "aws_security_group" "name_0" {
  name        = "sg_ssh"
  description = "Allow ssh inbound and all outbound traffic"
  vpc_id      = "${aws_vpc.default.id}"

  tags {
    Name = "sg_ssh"
  }
}

# Create EC2 Instance with ami-0915bcb5fa77e4892 and instance type t3.micro. Use vpc ssh security group id/name to make it easier to run tests on AWS.
resource "aws_instance" "name_1" {
  ami           = "ami-0915bcb5fa77e4892"
  instance_type = "t2.micro"
}

