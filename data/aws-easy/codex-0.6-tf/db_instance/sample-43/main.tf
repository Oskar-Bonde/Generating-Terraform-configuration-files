terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS block
provider "aws" {
  region                  = var.region
  shared_credentials_file = var.aws_credentials_file
  profile                 = var.aws_profile
}

# Create Database instance
resource "aws_db_instance" "name_0" {
  allocated_storage    = var.database_allocated_storage
  engine               = var.database_engine
  engine_version       = var.database_engine_version
  instance_class       = var.database_instance_class
  name                 = var.database_name
  username             = var.database_username
  password             = var.database_password
  parameter_group_name = var.database_parameter_group_name
  storage_type         = var.database_storage_type
  backup_retention_period = var.database_backup_retention_period
  backup_window = var.database_backup_window
  maintenance_window = var.database_maintenance_window
  multi_az = var.database_multi_az
  auto_minor_version_upgrade = var.database_auto_minor_version_upgrade
  publicly_accessible = var.database_publicly_accessible
  vpc_security_group_ids = [aws_security_group.database.id]
  subnet_group_name = aws_db_subnet_group.database.name
  apply_immediately = var.database_apply_immediately
  tags = {
    Name = var.database_name
  }
}

