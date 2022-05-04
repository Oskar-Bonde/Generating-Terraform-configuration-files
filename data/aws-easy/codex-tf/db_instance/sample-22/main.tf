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
  engine     = "mysql"
  engine_version = "5.7.19"
  instance_class = "db.t2.micro"
  allocated_storage = "20"
  username = "myuser"
  password = "mypassword"
  db_subnet_group_name = "mydb-subnet-group"
  vpc_security_group_ids = ["sg-12345678"]
  parameter_group_name = "default.mysql5.7"
  backup_retention_period = "0"
  skip_final_snapshot = true
}

