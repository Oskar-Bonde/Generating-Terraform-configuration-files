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
  allocated_storage      = 5
  storage_type           = "gp2"
  engine                 = "mysql"
  engine_version         = "5.7.11"
  instance_class         = "db.t2.micro"
  name                   = "rds-mysql-test"
  username               = "foo"
  password               = "barbaz"
  multi_az                = false
  publicly_accessible    = false
  storage_encrypted       = false
  apply_immediately       = true
  storage_type_encryption = "gp2"

  # DB Subnet Group
  subnet_ids = [
    "${aws_subnet.private-a.id}",
    "${aws_subnet.private-b.id}",
    "${aws_subnet.private-c.id}",
  ]

  tags {
    Name = "rds-mysql-test"
  }
}

