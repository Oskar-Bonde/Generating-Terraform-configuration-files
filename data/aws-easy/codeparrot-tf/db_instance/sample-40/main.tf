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
  identifier_prefix      = "example"
  allocated_storage      = 10
  engine                 = "mysql"
  engine_version         = "5.6.27"
  instance_class         = "db.t2.micro"
  name                   = "example_database_instance"
  username               = "admin"
  password               = "${var.db_password}"
  db_subnet_group_name    = "${aws_db_subnet_group.example.name}"
  parameter_group_name    = "${aws_db_parameter_group.example.name}"
  vpc_security_group_ids = ["${aws_security_group.example.id}"]
  skip_final_snapshot    = true
  multi_az                = true
  storage_type            = "gp2"
  backup_retention_period = 7
  apply_immediately       = true
  multi_az_load_balancing = true
  publicly_accessible     = false
  storage_encrypted       = true
  maintenance_window      = "mon:05:00-mon:06:00"
  backup_window           = "09:00-09:00"
  maintenance_window_days = ["Monday", "Tuesday", "Wednesday", "Thursday"]
  backup_retention_period = "10"
  maintenance_window_start_time = "09:00"
  multi_az_load_balancing = true
  publicly_accessible     = false
  storage_type            = "gp2"
  apply_immediately       = true
  storage_encrypted       = true
  maintenance_window      = "mon:05:00-mon:06:00"
  maintenance_window_days = ["Monday", "Tuesday", "Wednesday", "Thursday"]
  backup_retention_period = "10"
  maintenance_window_start_time = "09:00"
  multi_az                = true
  storage_type            = "gp2"
  apply_immediately       = true
  storage_encrypted       = true
  maintenance_window      = "mon:05:00-mon:06:00"
  maintenance_window_days = ["Monday", "Tuesday", "Wednesday", "Thursday"]
  backup_retention_period = "10"
  maintenance_window_start_time = "09:00"
  multi_az_load_balancing = true
  publicly_accessible     = false
  storage_type            = "gp2"
  apply_immediately       = true
  storage_encrypted       = true
  maintenance_window      = "mon:05:00-mon:06:00"
  maintenance_window_days = ["Monday", "Tuesday", "Wednesday", "Thursday"]
  backup_retention_period = "10"
  maintenance_window_start_time = "09:00"
  multi_az                = true
  storage_type            = "gp2"
  apply_immediately       = true
  storage_encrypted       = true
  maintenance_window      = "mon:05:00-mon:06:00"
  maintenance_window_days = ["Monday", "Tuesday", "Wednesday", "Thursday"]
  backup_retention_period = "10"
  maintenance_window_start_time = "09:00"
  multi_az_load_balancing = true
  publicly_accessible     = false
  storage_type            = "gp2"
  apply_immediately       = true
  storage_encrypted       = true
  maintenance_window      = "mon:05:
}

