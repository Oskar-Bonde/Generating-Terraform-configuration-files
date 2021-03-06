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
  identifier = "db-instance-test"
  allocated_storage = 10
  engine = "postgres"
  engine_version = "10.6"
  instance_class = "db.t2.micro"
  name = "mydb"
  username = "foo"
  password = "bar"
  parameter_group_name = "default.postgres10"
  skip_final_snapshot = true
  tags = {
    Name = "db-instance-test"
  }
}

