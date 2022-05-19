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
  identifier = "db"
  engine = "postgres"
  engine_version = "10.6"
  instance_class = "db.t2.micro"
  allocated_storage = 20
  username = "admin"
  password = "admin"
  vpc_security_group_ids = ["sg-0d9b9e6c3c6e2b8d8"]
  skip_final_snapshot = true
}

