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
  identifier = "mydb"
  instance_class = "db.t2.micro"
  allocated_storage = 20
  engine = "postgres"
  engine_version = "9.6.2"
  name = "mydb"
  username = "foo"
  password = "bar"
  skip_final_snapshot = true
}

