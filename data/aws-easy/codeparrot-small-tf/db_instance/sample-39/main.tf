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
  allocated_storage = 10
  engine            = "mysql"
  engine_version    = "5.6.27"
  instance_class    = "db.t2.micro"
  name              = "example_db"
  username          = "admin"
  password          = "admin"
  vpc_security_group_ids = ["${aws_security_group.default.id}"]
  db_subnet_group_name   = "${aws_db_subnet_group.default.id}"
  skip_final_snapshot = true
  final_snapshot_identifier = "example-snapshot"
  skip_final_snapshot_identifier_prefix = "example-snapshot-0"
  final_snapshot_identifier_prefix_length = 10
  final_snapshot_storage_class = "gp2"
  final_snapshot_storage_type = "gp2"
  final_snapshot_iops = 1
  final_snapshot_snapshot_id = "snapshot-0"
  final_snapshot_snapshot_storage_type = "gp2"
  final_snapshot_tags = {
    Name = "example-snapshot"
  }
}

