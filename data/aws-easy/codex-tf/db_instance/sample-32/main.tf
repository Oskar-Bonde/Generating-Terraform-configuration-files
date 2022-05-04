terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS block
provider "aws" {
  region = "us-east-1"
}

# Create Database instance
resource "aws_db_instance" "name_0" {
  identifier = "example"
  allocated_storage = 10
  engine = "mysql"
  engine_version = "5.7.17"
  instance_class = "db.t2.micro"
  name = "example"
  username = "example"
  password = "example"
  parameter_group_name = "default.mysql5.7"
  backup_retention_period = 0
  skip_final_snapshot = true
  skip_final_snapshot = true
  apply_immediately = true
  vpc_security_group_ids = ["sg-0e8f6a6d8c8c8d7c3"]
  subnet_group_name = "default"
}

