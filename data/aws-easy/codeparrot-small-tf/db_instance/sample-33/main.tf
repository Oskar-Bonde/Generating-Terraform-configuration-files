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
  engine            = "mysql"
  allocated_storage = 10
  engine_version    = "5.6.27"
  instance_class    = "db.t2.micro"
  name               = "example"
  username          = "admin"
  password          = "changeme"
  vpc_security_group_ids = ["${aws_security_group.example.id}"]
  db_subnet_group_name = "${aws_db_subnet_group.example.id}"
  parameter_group_name = "default.mysql5.6"
  storage_type      = "gp2"
  backup_window     = "02:00-03:00"
  maintenance_window = "sun:04:00-sun:04:30"
  multi_az            = false
  vpc_security_group_ids = ["${aws_security_group.example.id}"]
  skip_final_snapshot = true
  skip_final_snapshot_identifier = true
  final_snapshot_identifier = "snapshot-1"
  vpc_security_group_ids = ["${aws_security_group.example.id}"]
  tags {
    Name = "example"
  }
}

