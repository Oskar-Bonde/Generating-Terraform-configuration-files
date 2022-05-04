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
  identifier_prefix  = "example"
  allocated_storage = 10
  engine            = "mysql"
  engine_version    = "5.6.27"
  instance_class    = "db.t2.micro"
  name              = "example_database_instance"
  username          = "admin"
  password          = "admin"
  multi_az            = true
  publicly_accessible = false
  backup_retention_period = 7
  apply_immediately       = true
  multi_az_load_balancing = true
  storage_type        = "gp2"
  apply_immediately       = true
  storage_encrypted       = true
  maintenance_window      = "sun:04:30-sun:04:30"
  multi_az_load_balancing = true
  publicly_accessible_backup_window = "07:00-07:30"
  tags = {
    Name = "example_database_instance"
  }
}
