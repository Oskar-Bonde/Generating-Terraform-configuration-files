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
  engine_version       = "5.6.27"
  instance_class         = "db.t2.micro"
  name                   = "rds-mysql-${var.environment_role}-${var.environment}-db"
  username               = "foo"
  password               = "${var.rds_password}"
  db_subnet_group_name   = "${aws_db_subnet_group.rds_subnet_group.id}"
  parameter_group_name    = "${aws_db_parameter_group.rds_mysql_parameter_group.id}"
  vpc_security_group_ids = ["${aws_security_group.rds_mysql_security_group.id}"]
  skip_final_snapshot    = true
  final_snapshot_identifier = "mysql-final-snapshot"

  # DB Subnet Group
  subnet_ids = ["${aws_subnet.rds_subnet_1.id}", "${aws_subnet.rds_subnet_2.id}", "${aws_subnet.rds_subnet_3.id}"]

  # DB Parameter Group
  skip_final_snapshot = true
}

