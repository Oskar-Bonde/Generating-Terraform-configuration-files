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
  identifier = "db-instance-name"
  engine     = "postgres"
  engine_version = "10.6"
  allocated_storage = "20"
  storage_type = "gp2"
  instance_class = "db.t2.micro"
  name = "db-instance-name"
  username = "db-username"
  password = "db-password"
  parameter_group_name = "default.postgres10"
  backup_retention_period = "7"
  backup_window = "05:00-06:00"
  skip_final_snapshot = true
  vpc_security_group_ids = ["sg-123456"]
  subnet_group_name = "db-subnet-group"
  maintenance_window = "Mon:00:00-Mon:03:00"
  multi_az = false
  auto_minor_version_upgrade = true
  publicly_accessible = false
  apply_immediately = true
  tags = {
    Name = "db-instance-name"
  }
}

