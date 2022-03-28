terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block AWS with region us east 1
provider "aws" {
  region = "us-east-1"
}

# Create EC2 Instance with ami-0ff8a91507f77f867 instance type t2.micro. Connection Block for ssh with the public ip
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867"
  instance_type = "t2.micro"
  tags {
    Name = "HelloWorld"
  }
  vpc_security_group_ids = ["${aws_security_group.example.id}"]
  subnet_id = "${aws_subnet.example.id}"
  associate_public_ip_address = true
}

