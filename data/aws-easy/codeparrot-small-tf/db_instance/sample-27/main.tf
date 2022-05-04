rovider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS block with AWS
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
  db_subnet_group_name = "default"
  vpc_security_group_ids = ["${aws_security_group.default.id}"]
  db_subnet_group_description = "description"
  skip_final_snapshot = true
  skip_final_snapshot_on_destroy = true
  final_snapshot_identifier = "example"
}

