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
  engine = "postgres"
  engine_version = "9.6.2"
  instance_class = "db.t2.micro"
  name = "db-instance-name"
  username = "db-username"
  password = "db-password"
  allocated_storage = 20
  storage_type = "gp2"
  backup_retention_period = 7
  backup_window = "07:00-09:00"
  maintenance_window = "Fri:09:00-Fri:09:30"
  parameter_group_name = "default.postgres9.6"
  publicly_accessible = false
  skip_final_snapshot = true
  vpc_security_group_ids = ["sg-12345678"]
  subnet_group_name = "default"
  tags = {
    Name = "db-instance-name"
  }
}

