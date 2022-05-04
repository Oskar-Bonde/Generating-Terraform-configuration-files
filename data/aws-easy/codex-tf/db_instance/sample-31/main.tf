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
  allocated_storage = 20
  engine = "MySQL"
  engine_version = "5.7.19"
  instance_class = "db.t2.micro"
  name = "mydb"
  username = "foo"
  password = "bar"
  parameter_group_name = "default.mysql5.7"
  backup_retention_period = 0
  backup_window = "07:00-09:00"
  skip_final_snapshot = true
  skip_final_snapshot = true
  apply_immediately = true
  vpc_security_group_ids = ["sg-123456"]
  subnet_group_name = "mydb-subnet-group"
  storage_type = "gp2"
  multi_az = false
  publicly_accessible = false
  auto_minor_version_upgrade = true
  maintenance_window = "Fri:09:00-Fri:09:30"
  monitoring_interval = 60
  monitoring_role_arn = "arn:aws:iam::123456789012:role/MyAuroraMonitoringRole"
  deletion_protection = false
  copy_tags_to_snapshot = true
  final_snapshot_identifier = "mydb-final-snapshot"
  timezone = "UTC"
  iam_database_authentication_enabled = false
  performance_insights_enabled = false
  performance_insights_kms_key_id = "arn:aws:kms:us-east-1:123456789012:key/abcd1234-a123-456a-a12b-a123b4cd56ef"
  performance_insights_retention_period = 7
  enabled_cloudwatch_logs_exports = ["audit", "error", "general", "slowquery"]
  kms_key_id = "arn:aws:kms:us-east-1:123456789012:key/abcd1234-a123-456a-a12b-a123b4cd56ef"
  tags =
}

