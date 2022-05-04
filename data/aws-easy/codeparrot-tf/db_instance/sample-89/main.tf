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
  identifier_prefix = "example"
  allocated_storage    = 10
  engine                 = "mysql"
  engine_version       = "5.6.27"
  instance_class         = "db.t2.micro"
  name                   = "example_database_instance"
  username               = "admin"
  password               = "admin"
  db_subnet_group_name   = aws_db_subnet_group.example.name
  parameter_group_name    = "default.mysql5.6"
  vpc_security_group_ids = [aws_security_group.default.id]
  skip_final_snapshot    = true
  multi_az               = false
  storage_type            = "gp2"
  backup_retention_period   = 7
  apply_immediately       = true
  multi_az_load_balancing = true
  publicly_accessible     = false
  storage_encrypted       = true
  maintenance_window      = "sun:04:30-sun:04:30"
  backup_window           = "04:30-sun:04:30"
  maintenance_window_visible = true
  maintenance_window_start_hour = 5
  maintenance_window_starthour = "08:00-09:00"
  multi_az_load_balancing = true
  storage_type_map = {
    "gp2" = "gp2"
  }
  tags = {
    Name = "example_database_instance"
  }
}
