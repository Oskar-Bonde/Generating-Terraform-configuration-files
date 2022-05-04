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
  identifier_prefix = "t2db-"
  allocated_storage    = 5
  engine                 = "mysql"
  engine_version       = "5.6.27"
  instance_class         = "db.t2.micro"
  name                   = "t2db"
  username               = "foo"
  password               = "barbaz"
  multi_az                = false
  publicly_accessible    = false
  storage_type           = "gp2"
  username_prefix        = "foo-"
  vpc_security_group_ids = ["${aws_security_group.default_egress.id}"]
  db_subnet_group_name    = "${aws_db_subnet_group.default_egress.id}"
  parameter_group_name    = "default.mysql5.7"
  backup_retention_period = 7
  apply_immediately       = true
  multi_az                = false
  storage_encrypted       = true
  apply_immediately       = true
  storage_type           = "gp2"
  tags {
    Name = "foo"
  }
}
