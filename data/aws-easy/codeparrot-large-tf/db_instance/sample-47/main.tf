rovider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS block with AWS
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create Database instance
resource "aws_db_instance" "name_0" {
  identifier_prefix  = "example-database-instance-"
  allocated_storage    = 10
  engine                 = "mysql"
  engine_version       = "5.6.27"
  instance_class         = "db.t2.micro"
  name                   = "example-database"
  username               = "admin"
  password               = "${var.db_password}"
  db_subnet_group_name   = "${aws_db_subnet_group.example.name}"
  parameter_group_name    = "default.mysql5.6"
  vpc_security_group_ids = ["${aws_security_group.default.id}"]
  skip_final_snapshot    = true
  multi_az                = true
  storage_type            = "gp2"
  backup_retention_period = 7
  apply_immediately       = true
  multi_az_load_balancing = true
  publicly_accessible     = false
  storage_encrypted       = false
  maintenance_window      = "Mon:03:00-Mon:04:00"
  backup_window           = "09:00-05:00"
  maintenance_window_days = ["Mon:03:00"]
  maintenance_window_hour   = ["11:00"]
  backup_retention_period = "7"
  maintenance_window_enabled = true
  multi_az_load_balancing = true
  storage_type            = "gp2"
  apply_immediately       = true
  storage_encrypted       = true
  maintenance_window      = "Mon:03:00-Mon:04:00"
  backup_window           = "09:00-05:00"
  maintenance_window_days = ["Mon:03:00"]
  maintenance_window_hour   = ["11:00"]
  backup_retention_period = "7"
  maintenance_window_enabled = true
  multi_az                = true
  storage_type            = "gp2"
  apply_immediately       = true
  storage_encrypted       = true
  maintenance_window      = "Mon:03:00-Mon:04:00"
  backup_window           = "09:00-05:00"
  maintenance_window_days = ["Mon:03:00"]
  maintenance_window_hour   = ["11:00"]
  backup_retention_period = "7"
  maintenance_window_enabled = true
  multi_az                = true
  storage_type            = "gp2"
  apply_immediately       = true
  storage_encrypted       = true
  maintenance_window      = "Mon:03:00-Mon:04:00"
  backup_window           = "09:00-05:00"
  maintenance_window_days = ["Mon:03:00"]
  maintenance_window_hour   = ["11:00"]
  backup_retention_period = "7"
  maintenance_window_enabled = true
  multi_az                = true
  storage_type            = "gp2"
  apply_immediately       = true
  storage_encrypted       = true
  maintenance_window      = "Mon:03:00-Mon:04:00"
  backup_window           = "09:00-05:00"
  maintenance_window_days = ["Mon:03:00"]
  maintenance_window_hour   = ["11:00"]
  backup_retention_period = "7"
  maintenance_window_enabled = true
  multi_az                = true
  storage_type            = "gp2"
  apply_immediately       = true
  storage_encrypted       = true
  maintenance_window      = "Mon:03:00-Mon:04:00"
 
}

