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
  identifier_prefix = "rds-mysql-"
  allocated_storage    = 5
  engine                 = "mysql"
  engine_version       = "5.7.11"
  instance_class         = "db.t2.micro"
  name                   = "rds-mysql-test"
  username               = "foo"
  password               = "barbaz"
  publicly_accessible    = false
  vpc_security_group_ids = ["${aws_security_group.rds_mysql_access.id}"]
  db_subnet_group_name   = "${aws_db_subnet_group.rds_mysql_access.id}"
  parameter_group_name   = "default.mysql5.6"
  multi_az                = false
  publicly_accessible    = false
  storage_type            = "gp2"
  apply_immediately       = true
  multi_az_load_balancing = true
  storage_encrypted       = true
  apply_immediately       = true
  engine_version         = "5.7.11"
  tags = {
    Name = "rds-mysql-test"
  }
}

