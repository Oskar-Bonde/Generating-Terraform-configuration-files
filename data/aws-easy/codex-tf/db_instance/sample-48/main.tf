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
  identifier = "my-db"
  engine     = "mysql"
  engine_version = "5.7.22"
  instance_class = "db.t2.micro"
  allocated_storage = 20
  username = "admin"
  password = "password"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot = true
}

