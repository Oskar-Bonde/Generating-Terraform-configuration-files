terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS block
provider "aws" {
  region = var.aws_region
}

# Create Database instance
resource "aws_db_instance" "name_0" {
  allocated_storage    = var.db_allocated_storage
  storage_type         = var.db_storage_type
  engine               = var.db_engine
  engine_version       = var.db_engine_version
  instance_class       = var.db_instance_class
  name                 = var.db_name
  username             = var.db_username
  password             = var.db_password
  parameter_group_name = var.db_parameter_group_name
  backup_retention_period = var.db_backup_retention_period
  backup_window = var.db_backup_window
  maintenance_window = var.db_maintenance_window
  multi_az = var.db_multi_az
  auto_minor_version_upgrade = var.db_auto_minor_version_upgrade
  apply_immediately = var.db_apply_immediately
  publicly_accessible = var.db_publicly_accessible
  final_snapshot_identifier = var.db_final_snapshot_identifier
  vpc_security_group_ids = [aws_security_group.db_sg.id]
  subnet_group_name = aws_db_subnet_group.db_subnet_group.name
}

