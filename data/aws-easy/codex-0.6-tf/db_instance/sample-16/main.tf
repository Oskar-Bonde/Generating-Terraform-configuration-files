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
  allocated_storage    = 10
  storage_type         = "gp2"
  engine               = "MySQL"
  engine_version       = "5.6.35"
  instance_class       = "db.t2.micro"
  name                 = "mydb"
  username             = "foo"
  password             = "bar"
  parameter_group_name = "default.mysql5.6"
  backup_retention_period = 0
  skip_final_snapshot = true
}

