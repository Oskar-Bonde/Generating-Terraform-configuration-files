terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS in region "us-east-1"
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create RDS MySQL Database with 5 allocated storage and username foo and password barbaz. Instance class t2 micro and skip final snapshot.
resource "aws_db_instance" "name_0" {
  identifier = "db-1"
  allocated_storage = 10
  instance_class = "db.t2.micro"
  name           = "db-1"
  username      = "foo"
  password      = "bar"
  publicly_accessible = true
  vpc_security_group_ids = ["${aws_security_group.db_sg.id}"]
  db_subnet_group_name = "${aws_db_subnet_group.db_subnet_group.name}"
  publicly_accessible = true
  vpc_security_group_ids = ["${aws_security_group.db_sg.id}"]
  multi_az            = true
  publicly_accessible = true
  backup_retention_period = "3600"
  multi_az             = true
  multi_az_offset       = true
  multi_az_offset       = true
  multi_az_name         = "db-1"
  multi_az_user        = "foo"
  multi_az_password    = "bar"
  multi_az_version     = true
  multi_az_version_offset = "0"
  multi_az_backup_window  = "3600"
  multi_az_backup_window_type = "pd-ssd"
  multi_az_backup_window_interval = "3600"
  multi_az_backup_window_expiration_ms = "3600"
  multi_az_backup_window_expiration_ms_period = "3600"
  multi_az_backup_window_expiration_ms_days = "3600"
  multi_az_backup_window_expiration_ms_start = "3600"
  multi_az_backup_window_expiration_ms_interval = "3600"
  multi_az_backup_window_expiration_ms_interval_ms = "3600"
  multi_az_backup_window_expiration_ms_stop = "3600"
  multi_az_backup_window_expiration_ms_stop_type = "pd-ssd"
  multi_az_backup_window_expiration_ms_offset = "0"
  multi_az_backup_window_expiration_ms_offset_ms = "0"
  multi_az_backup_window_expiration_ms_interval = "3600"
  multi_az_backup_window_expiration_ms_start = "3600"
  multi_az_backup_window_expiration_ms
}

