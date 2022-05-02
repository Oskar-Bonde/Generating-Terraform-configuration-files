terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS block
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create Database instance
resource "aws_db_instance" "name_0" {
  engine            = "mysql"
  allocated_storage = 10
  instance_class    = "db.t2.micro"
  name               = "example"
  username          = "admin"
  password          = "admin"
  vpc_security_group_ids = ["${aws_security_group.default.id}"]
}

