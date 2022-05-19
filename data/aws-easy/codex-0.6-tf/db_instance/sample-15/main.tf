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
  engine     = "MySQL"
  engine_version = "5.7.19"
  instance_class = "db.t2.micro"
  allocated_storage = "20"
  username = "myuser"
  password = "mypassword"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot = true
}

