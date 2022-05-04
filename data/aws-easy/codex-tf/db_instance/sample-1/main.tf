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
  identifier = "terraform-test"
  allocated_storage = 10
  engine = "MySQL"
  engine_version = "5.7.19"
  instance_class = "db.t2.micro"
  name = "terraform-test"
  username = "admin"
  password = "admin"
  parameter_group_name = "default.mysql5.7"
  backup_retention_period = 5
  backup_window = "07:00-09:00"
  skip_final_snapshot = true
  apply_immediately = true
  maintenance_window = "Fri:09:00-Fri:10:00"
  multi_az = false
  auto_minor_version_upgrade = true
  publicly_accessible = false
  vpc_security_group_ids = ["sg-0a9f9c6f7d5d5a8a8"]
  storage_type = "gp2"
  storage_encrypted = false
  deletion_protection = false
  copy_tags_to_snapshot = true
  monitoring_interval = 5
  monitoring_role_arn = "arn:aws:iam::123456789012:role/monitoring-role"
  enable_performance_insights = true
  performance_insights_kms_key_id = "arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012"
  performance_insights_retention_period = 7
  cloudwatch_logs_export_configuration {
    enable_log_types = ["general", "audit"]
  }
  timezone = "UTC"
  iam_database_authentication_enabled = true
  iam_roles = ["arn:aws:iam::123456789012:role/iam-role"]
  tags = {
    Name = "tf-acc-test-rds-instance"
  }
}

