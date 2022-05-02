rovider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS block
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create Database instance//
resource "aws_db_instance" "name_0" {
  identifier_prefix  = "example"
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "5.6.27"
  instance_class       = "db.t2.micro"
  name                 = "example_database_instance"
  username             = "admin"
  password             = "admin"
  db_subnet_group_name   = "default"
  parameter_group_name   = "default"
  vpc_security_group_ids = ["${aws_security_group.default.id}"]
  skip_final_snapshot    = true
  storage_type            = "gp2"
  apply_immediately       = true
  multi_az                = true
  storage_encrypted         = true
  apply_immediately       = true
  storage_type_controller    = "db.m4.large"
  publicly_accessible     = true
  storage_encrypted_accelerators = ["${var.accel_key}"]
  maintenance_window      = "sun:04:30-sun:04:30"
  backup_retention_period = 7
  apply_immediately       = true
  multi_az                = true
  storage_type            = "gp2"
  tags {
    Name = "example_database_instance"
  }
}

