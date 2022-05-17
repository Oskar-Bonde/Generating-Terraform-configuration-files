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
  identifier_prefix      = "example-db"
  allocated_storage      = 10
  engine                 = "mysql"
  engine_version         = "5.6.27"
  instance_class         = "db.t2.micro"
  name                   = "example-db"
  username               = "admin"
  password               = "${var.db_password}"
  db_subnet_group_name   = "${aws_db_subnet_group.example.name}"
  parameter_group_name    = "default.mysql5.6"
  vpc_security_group_ids = ["${aws_security_group.default.id}"]
  skip_final_snapshot    = true
  copy_tags_to_snapshot  = true
  multi_az             = true
  storage_type          = "gp2"
  final_snapshot_identifier = "example-final"
  skip_final_snapshot     = true
  vpc_subnet_ids         = ["${aws_subnet.example.id}"]
  storage_encrypted       = true
  tags {
    Name = "example-db"
  }
}
