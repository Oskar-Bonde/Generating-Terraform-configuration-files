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

# Create Database instancevariable
resource "aws_db_instance" "name_0" {
  identifier_prefix      = "example"
  allocated_storage      = 10
  engine                 = "mysql"
  engine_version         = "5.7.11"
  instance_class         = "db.t2.micro"
  name                   = "example_database_instance"
  username               = "example_user"
  password               = "example_password"
  db_subnet_group_name    = "${aws_db_subnet_group.example.name}"
  parameter_group_name    = "${aws_db_parameter_group.example.name}"
  vpc_security_group_ids = ["${aws_security_group.example.id}"]
  skip_final_snapshot    = true
  multi_az                = true
  storage_type            = "gp2"
  apply_immediately       = true
  multi_az_load_balancing = true
  publicly_accessible     = true
  storage_encrypted       = true
  maintenance_window      = "sun:04:30-sun:04:30"
  backup_retention_period = 7
  maintenance_window_type   = "gp2"
  skip_final_snapshot     = true
  vpc_security_group_ids   = ["${aws_security_group.example.id}"]
  tags = {
    Name = "example_database_instance"
  }
}

