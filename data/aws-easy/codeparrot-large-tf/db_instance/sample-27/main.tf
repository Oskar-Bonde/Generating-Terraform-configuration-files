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
  engine               = "mysql"
  engine_version       = "5.6.27"
  instance_class       = "db.t2.micro"
  name                 = "example_database_instance"
  username             = "admin"
  password             = "admin"
  db_subnet_group_name   = "example_subnet_group"
  parameter_group_name   = "example_db_parameters"
  vpc_security_group_ids = ["${aws_security_group.example_db_parameters.id}"]
  skip_final_snapshot    = true
  tags = {
    Name = "example_database_instance"
  }
}

