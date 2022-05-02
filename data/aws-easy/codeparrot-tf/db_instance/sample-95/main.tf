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
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "5.6.27"
  instance_class       = "db.t2.micro"
  name                 = "example_database_instance"
  username             = "example_user"
  password             = "example_password"
  publicly_accessible    = false
  backup_retention_period = 7
  apply_immediately       = true
  multi_az                = true
  storage_type            = "gp2"
  final_snapshot_identifier = "example_final_snapshot_identifier"
  skip_final_snapshot       = true
  copy_tags_to_snapshot     = true
  storage_encrypted       = true
  storage_type            = "gp2"
  tags = {
    Name = "example_database_instance"
  }
}

