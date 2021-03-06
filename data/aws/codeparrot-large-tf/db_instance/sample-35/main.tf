terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS in region "us-east-1"
provider "aws" {
  region = "us-east-1"
}

# Create RDS MySQL Database with 5 allocated storage and username foo and password barbaz. Instance class t2 micro and skip final snapshot
resource "aws_db_instance" "name_0" {
  identifier_prefix = "rds-mysql-db-"
  allocated_storage    = 5
  engine                 = "mysql"
  engine_version       = "5.6.27"
  instance_class         = "db.t2.micro"
  name                   = "rds-mysql-db"
  username               = "foo"
  password               = "barbaz"
  publicly_accessible    = false
  backup_retention_period = 7
  apply_immediately       = true
  multi_az               = false
  storage_type            = "gp2"
  final_snapshot_identifier = "final-snapshot-example"
  storage_encrypted       = false
  apply_immediately       = true
  storage_type_encryption = "None"
  tags = {
    Name = "rds-mysql-db"
  }
}

