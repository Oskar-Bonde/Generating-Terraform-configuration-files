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
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "5.7.11"
  instance_class       = "db.t2.micro"
  name                 = "example"
  username             = "admin"
  password             = "admin"
  vpc_security_group_ids = ["${aws_security_group.default.id}"]
  db_subnet_group_name   = "${aws_db_subnet_group.default.id}"
  parameter_group_name   = "default.mysql5.6"
  vpc_security_group_ids = ["${aws_security_group.default.id}"]
  skip_final_snapshot    = true
  multi_az               = true
  storage_type           = "gp2"
  apply_immediately       = true
  multi_az_load_balancing = true
  storage_encrypted       = true
  apply_immediately       = true
  engine_mode            = "postgres"
  engine_version         = "9.5.1"
  instance_class         = "db.t2.micro"
  name                   = "example"
  username               = "admin"
  password               = "admin"
  backup_retention_period = 7
  skip_final_snapshot     = true
  skip_final_snapshot_deletion = true
  vpc_security_group_ids = ["${aws_security_group.default.id}"]
  tags {
    Name = "example"
  }
}

