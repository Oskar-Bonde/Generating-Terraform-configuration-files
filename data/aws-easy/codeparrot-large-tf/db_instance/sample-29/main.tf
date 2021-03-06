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
  allocated_storage      = 10
  engine                 = "mysql"
  engine_version         = "5.7.17"
  instance_class         = "db.t2.micro"
  name                   = "example_database_instance"
  username               = "admin"
  password               = "admin"
  db_subnet_group_name   = "default"
  parameter_group_name    = "default"
  vpc_security_group_ids = ["${aws_security_group.default_security_group.id}"]
  db_subnet_group_description = "Default security group"
  skip_final_snapshot    = true
  copy_tags_to_snapshot  = true
  multi_az             = false
  storage_type          = "gp2"
  final_snapshot_identifier = "example_final_snapshot"
  skip_final_snapshot     = true
  vpc_subnet_group_name   = "default"
  storage_encrypted       = true
  storage_type          = "gp2"
  tags = {
    Name = "example_database_instance"
  }
}

