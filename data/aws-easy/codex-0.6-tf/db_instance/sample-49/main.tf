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
  identifier = "db-instance"
  allocated_storage = "10"
  engine = "postgres"
  engine_version = "9.6.2"
  instance_class = "db.t2.micro"
  name = "db-instance"
  username = "admin"
  password = "admin"
  parameter_group_name = "default.postgres9.6"
  skip_final_snapshot = true
}

