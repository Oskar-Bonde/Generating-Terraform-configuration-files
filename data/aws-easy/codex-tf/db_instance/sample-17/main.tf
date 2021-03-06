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
  engine = "MySQL"
  engine_version = "5.7.19"
  instance_class = "db.t2.micro"
  name = "db-instance-test"
  username = "admin"
  password = "password"
  parameter_group_name = "default.mysql5.7"
  backup_retention_period = 0
  skip_final_snapshot = true
  publicly_accessible = true
  storage_type = "gp2"
  vpc_security_group_ids = ["sg-0c5f9f9c9e9b5e5d5"]
  db_subnet_group_name = "default"
  multi_az = false
  apply_immediately = true
  auto_minor_version_upgrade = true
  maintenance_window = "Mon:00:00-Mon:03:00"
  monitoring_interval = 60
  monitoring_role_arn = "arn:aws:iam::123456789012:role/rds-monitoring-role"
  backup_window = "01:00-02:00"
  copy_tags_to_snapshot = true
  deletion_protection = false
  final_snapshot_identifier = "db-instance-test-final-snapshot"
  iam_database_authentication_enabled = false
  iops = 1000
  kms_key_id = "arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012"
  license_model = "general-public-license"
  option_group_name = "default:mysql-5-7"
  port = 3306
  timezone = "UTC"
  enable_performance_insights = true
  performance_insights_kms_key_id = "arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012"
}

