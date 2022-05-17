provider
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
resource "aws_instance" "name_0" {
  ami           = "ami-038f1ca1bd58a5790" 
  instance_type = "t2.small"
  key_name      = "aws-keypair"
  vpc_security_group_ids = ["${aws_security_group.default.id}"]
  subnet_id     = "${aws_subnet.private.0.id}"
  associate_public_ip_address = true
  source_dest_check = false

  tags {
    Name = "t2"
  }
}

