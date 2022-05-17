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
  identifier_prefix  = "example"
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "5.6.27"
  instance_class       = "db.t2.micro"
  name                 = "example_database_instance"
  username             = "admin"
  password             = "admin"
  db_subnet_group_name   = "${aws_db_subnet_group.example.name}"
  parameter_group_name   = "default.mysql5.6"
  vpc_security_group_ids = ["${aws_security_group.default.id}"]
  skip_final_snapshot    = true
  skip_final_snapshot_identifier = "True"
  vpc_subnet_group_name   = "${aws_db_subnet_group.example.name}"
  skip_final_snapshot_identifier = "True"
  skip_final_snapshot        = true
  vpc_security_group_ids = ["${aws_security_group.default.id}"]
  db_subnet_group_description = "My db subnet group"
  skip_final_snapshot_identifier = "True"
  skip_final_snapshot        = true
  vpc_subnet_group_description = "My db subnet group"
  skip_final_snapshot_identifier = "True"
  vpc_security_group_ids = ["${aws_security_group.default.id}"]
  tags = {
    Name = "example_database_instance"
  }
}

