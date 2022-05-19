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
  allocated_storage = 20
  storage_type = "gp2"
  engine = "postgres"
  engine_version = "9.6.2"
  instance_class = "db.t2.micro"
  name = "db-instance-test"
  username = "test"
  password = "test"
  parameter_group_name = "default.postgres9.6"
  backup_retention_period = 0
  skip_final_snapshot = true
  vpc_security_group_ids = ["sg-0d0a9a3b3c8b8e7a2"]
  subnet_group_name = "default"
  publicly_accessible = false
  tags = {
    Name = "db-instance-test"
  }
}

