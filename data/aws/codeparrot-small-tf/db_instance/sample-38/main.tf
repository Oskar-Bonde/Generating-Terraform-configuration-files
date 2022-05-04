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
  allocated_storage = 5
  engine            = "mysql"
  engine_version    = "5.6.27"
  instance_class    = "db.t2.micro"
  name              = "wordpress"
  username          = "foo"
  password          = "barbaz"
  multi_az         = false
  vpc_security_group_ids = ["${aws_security_group.mysql.id}"]
  db_subnet_group_name = "${aws_db_subnet_group.mysql.name}"
  skip_final_snapshot = true
  final_snapshot_identifier = "wordpress-final"
  skip_final_snapshot_identifier_regex = "^[^a-zA-Z0-9]$"
  final_snapshot_identifier_length = 5
  final_snapshot_storage_type = "gp2"
  final_snapshot_type = "gp2"
  final_snapshot_iops = 1
  final_snapshot_allocated_storage = 10
  final_snapshot_engine = "mysql"
  final_snapshot_instance_class = "db.t2.micro"
  final_snapshot_storage_type = "gp2"
  final_snapshot_iops = 1
  final_snapshot_allocated_storage = 10
  final_snapshot_engine = "mysql"
  final_snapshot_instance_class = "db.t2.micro"
  final_snapshot_storage_type = "gp2"
  final_snapshot_iops = 1
  final_snapshot_allocated_storage = 10
  final_snapshot_engine = "mysql"
  final_snapshot_instance_class = "db.t2.micro"
  final_snapshot_storage_type = "gp2"
  final_snapshot_iops = 1
  final_snapshot_allocated_storage = 10
  final_snapshot_engine = "mysql"
  final_snapshot_instance_class = "db.t2.micro"
  final_snapshot_storage_type = "gp2"
  final_snapshot_iops = 1
  final_snapshot_allocated_storage = 10
  final_snapshot_engine = "mysql"
  final_snapshot_instance_class = "db.t2.micro"
  final_snapshot_storage_type = "gp2"
  final_snapshot_iops = 1
  final_snapshot_allocated_storage = 10
  final_snapshot_engine = "mysql"
  final_snapshot_instance_class = "db.t2.micro"
  final_snapshot_storage_type = "gp2"
  final_snapshot_iops = 1
  final_snapshot_allocated_storage = 10
  final_snapshot_engine = "mysql"
  final_snapshot_instance_class = "db.t2.micro"
  final_snapshot_storage_type = "gp2"
  final_snapshot_iops = 1
  final_snapshot_allocated_storage = 10
  final_snapshot_engine = "mysql"
  final_snapshot_instance_class = "db.t2.micro"
  final_snapshot_storage_type = "gp2"
  final_snapshot_iops = 1
  final_snapshot_allocated_storage = 10
  final_snapshot_engine = "mysql"
  final_snapshot_instance_class = "db.t2.micro"
  final_snapshot_storage_type = "gp2"
  final_snapshot_iops = 1
}

