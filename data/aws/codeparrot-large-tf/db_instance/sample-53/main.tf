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
  name                   = "rds-mysql-test"
  username               = "foo"
  password               = "barbaz"
  db_subnet_group_name   = "subnet-group"
  vpc_security_group_ids = ["${aws_security_group.rds_mysql_sg.id}"]
  skip_final_snapshot    = true
}

