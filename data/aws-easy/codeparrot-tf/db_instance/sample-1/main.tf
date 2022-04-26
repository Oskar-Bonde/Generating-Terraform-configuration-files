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
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "5.6.27"
  instance_class       = "db.t2.micro"
  name                 = "example"
  username             = "admin"
  password             = "changeme"
  vpc_security_group_ids = ["${aws_security_group.default.id}"]
  db_subnet_group_name   = "${aws_db_subnet_group.example.id}"
  parameter_group_name   = "default.mysql5.6"
  storage_type         = "gp2"
  maintenance_window   = "sun:10:00-sun:10:30"
  multi_az            = false
  vpc_security_group_ids = ["${aws_security_group.default.id}"]
  backup_retention_period = 7
  skip_final_snapshot    = true
  final_snapshot_identifier = "example-final"
  skip_final_snapshot_identifier_prefix = "example-final"
  final_snapshot_identifier_prefix_length = 8
  final_snapshot_storage_class = "gp2"
  final_snapshot_storage_type = "gp2"
  final_snapshot_iops = 1
  final_snapshot_allocated_storage = 10
  final_snapshot_engine_type = "postgres"
  final_snapshot_engine_version = "9.6.6"
  final_snapshot_instance_class = "db.t2.micro"
  final_snapshot_instance_class = "db.t2.micro"
  final_snapshot_name = "example"
  final_snapshot_username = "admin"
  final_snapshot_password = "changeme"
  final_snapshot_port = "5432"
  final_snapshot_port_name = "example"
  final_snapshot_port_username = "admin"
  final_snapshot_port_password = "changeme"
  final_snapshot_port_port = "5432"
  final_snapshot_security_group_ids = ["${aws_security_group.default.id}"]
  final_snapshot_security_group_ids = ["${aws_security_group.admin.id}"]
  final_snapshot_subnet_group_name = "${aws_db_subnet_group.example.id}"
  final_snapshot_subnet_group_description = "example"
  final_snapshot_subnet_group_freeform_tags = {
    "Department" = "Finance"
  }
  final_snapshot_subnet_group_name = "${aws_db_subnet_group.example.id}"
  final_snapshot_subnet_group_description = "example"
  final_snapshot_subnet_group_freeform_tags = {
    "Department" = "Finance"
  }
  final_snapshot_subnet_group_name = "${aws_db_subnet_group.example.id}"
  final_snapshot_subnet_group_freeform_tags = {
    "Department" = "Finance"
  }
  final_snapshot_subnet_group_name = "${aws_db_subnet_group.example.id}"
  final_snapshot_subnet_group_freeform_tags = {
    "Department" = "Finance"
  }
  final_snapshot_subnet_group_name = "${aws_db_subnet_group.example.id}"
  final_snapshot_subnet_group_freeform_tags = {
    "Department" = "Finance"
  }
  final_snapshot_subnet_group_name = "${aws_db_subnet_group.example.
}

