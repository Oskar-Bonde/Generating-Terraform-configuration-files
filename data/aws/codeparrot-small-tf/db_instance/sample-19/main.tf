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
  username          = "username"
  password          = "password"
  vpc_security_group_ids = ["${aws_security_group.mysql.id}"]
  db_subnet_group_name = "${aws_db_subnet_group.mysql.name}"
  skip_final_snapshot = true
  final_snapshot_identifier = "wordpress-final-snapshot"
  final_snapshot_identifier_type = "gp2"
  final_snapshot_storage_class = "gp2"
  final_snapshot_iops = "100"
  final_snapshot_storage_size = "10"
  final_snapshot_username = "wordpress"
  final_snapshot_password = "password"
  final_snapshot_iops = "100"
  final_snapshot_storage_type = "gp2"
  final_snapshot_iops_per_instance = "1"
  final_snapshot_storage_encrypted = true
  final_snapshot_iops_per_instance = "10"
  final_snapshot_storage_encrypted_iops = "10"
  final_snapshot_storage_type = "gp2"
  final_snapshot_iops_per_instance = "1"
  final_snapshot_storage_encrypted_iops_per_instance = "10"
  final_snapshot_storage_type = "gp2"
  final_snapshot_iops_per_instance = "1"
  final_snapshot_storage_encrypted_iops_per_instance = "10"
  final_snapshot_storage_type = "gp2"
  final_snapshot_iops_per_instance = "1"
  final_snapshot_storage_encrypted_iops_per_instance = "10"
  final_snapshot_storage_type = "gp2"
  final_snapshot_iops_per_instance = "1"
  final_snapshot_storage_encrypted_iops_per_instance = "10"
  final_snapshot_storage_type = "gp2"
  final_snapshot_iops_per_instance = "1"
  final_snapshot_storage_encrypted_iops_per_instance = "10"
  final_snapshot_storage_type = "gp2"
  final_snapshot_iops_per_instance = "1"
  final_snapshot_storage_encrypted_iops_per_instance = "10"
  final_snapshot_storage_type = "gp2"
  final_snapshot_iops_per_instance = "1"
  final_snapshot_storage_encrypted_iops_per_instance = "10"
  final_snapshot_storage_type = "gp2"
  final_snapshot_iops_per_instance = "1"
  final_snapshot_storage_encrypted_iops_per_instance = "10"
  final_snapshot_storage_type = "gp2"
  final_snapshot_iops_per_instance = "1"
  final_snapshot_storage_encrypted_iops_per_instance = "10"
  final_snapshot_storage_type = "gp2"
  final_snapshot_iops_per_instance = "1"
  final_
}
