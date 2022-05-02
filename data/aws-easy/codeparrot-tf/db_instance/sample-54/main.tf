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

# Create Database instance
resource "aws_db_instance" "name_0" {
  identifier_prefix      = "example"
  allocated_storage      = 10
  engine                 = "mysql"
  engine_version         = "5.6.27"
  instance_class         = "db.t2.micro"
  name                   = "example_database_backup"
  username               = "admin"
  password               = "${var.db_password}"
  db_subnet_group_name    = "${aws_db_subnet_group.example.name}"
  parameter_group_name    = "${aws_db_parameter_group.example.name}"
  vpc_security_group_ids = ["${aws_security_group.example.id}"]
  skip_final_snapshot    = true
  copy_tags_to_snapshot  = true
  tags = {
    Name = "example_database_backup"
  }
}

