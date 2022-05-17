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
  availability_zone = "us-east-1e"
  security_groups = ["${aws_security_group.default.name}"]
  key_name = "${aws_key_pair.auth.id}"
  subnet_id = "${aws_subnet.public.0.id}"
  associate_public_ip_address = true
  source_dest_check = false
  tags = {
    Name = "t2"
  }
}
