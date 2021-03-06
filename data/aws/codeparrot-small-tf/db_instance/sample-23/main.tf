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
  final_snapshot    = true
  vpc_security_group_ids = ["${aws_security_group.mysql.id}"]
  db_subnet_group_name   = "${aws_db_subnet_group.mysql.id}"
  skip_final_snapshot = true
  skip_final_snapshot_on_destroy = true
  final_snapshot_identifier = "wordpress"
  final_snapshot_identifier_type = "gp2"
  final_snapshot_storage_class = "gp2"
  final_snapshot_iops = 5
  final_snapshot_storage_size = 10
  final_snapshot_storage_type = "gp2"
  final_snapshot_iops_per_instance = 2
  final_snapshot_storage_encrypted = true
  final_snapshot_iops_per_instance = 2
  final_snapshot_storage_type = "gp2"
  final_snapshot_storage_encrypted_by = "Terraform"
  final_snapshot_storage_encrypted_by_default = true
  final_snapshot_storage_type_count = 5
  final_snapshot_storage_encrypted_by_default = 1
  final_snapshot_storage_type_count_per_instance = 2
  final_snapshot_storage_encrypted_by_default = 1
  final_snapshot_storage_type_count_per_instance = 2
  final_snapshot_storage_type_count_per_instance = 2
  final_snapshot_storage_type_count_per_instance = 2
  final_snapshot_storage_type_count_per_instance = 2
  final_snapshot_storage_type_count_per_instance = 2
  final_snapshot_storage_type_count_per_instance = 2
  final_snapshot_storage_type_count_per_instance = 2
  final_snapshot_storage_type_count_per_instance = 2
  final_snapshot_storage_type_count_per_instance = 2
  final_snapshot_storage_type_count_per_instance = 2
  final_snapshot_storage_type_count_per_instance = 2
  final_snapshot_storage_type_count_per_instance = 2
  final_snapshot_storage_type_count_per_instance = 2
  final_snapshot_storage_type_count_per_instance = 2
  final_snapshot_storage_type_count_per_instance = 2
  final_snapshot_storage_type_count_per_instance = 2
  final_snapshot_storage_type_count_per_instance = 2
  final_snapshot_storage_type_count_per_instance = 2
  final_snapshot_storage_type_count_per_instance = 2
  final_snapshot_storage_type_count_per_instance = 2
  final_snapshot_storage_type_count_per_instance = 2
  final_snapshot_storage_type_count_per_instance = 2
  final_snapshot_storage_type_count_per_instance = 2
  final_snapshot_storage_type_count_per_instance = 2
  final_snapshot_storage_type_
}

