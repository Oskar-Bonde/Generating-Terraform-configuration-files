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
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "MySQL"
  engine_version       = "5.7.19"
  instance_class       = "db.t2.micro"
  name                 = "mydb"
  username             = "admin"
  password             = "mypassword"
  parameter_group_name = "default.mysql5.7"
  backup_retention_period = 0
  skip_final_snapshot = true
}

