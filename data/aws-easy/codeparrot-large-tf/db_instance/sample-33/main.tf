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
  identifier_prefix  = "example-database-instance-"
  allocated_storage    = 10
  engine                 = "mysql"
  engine_version       = "5.6.27"
  instance_class         = "db.t2.micro"
  name                   = "example-database"
  username               = "admin"
  password               = "${var.db_password}"
  db_subnet_group_name   = "${aws_db_subnet_group.example.name}"
  parameter_group_name    = "${aws_db_parameter_group.example.name}"
  vpc_security_group_ids = ["${aws_security_group.example.id}"]
  skip_final_snapshot    = true
  copy_tags_to_snapshot  = true
  multi_az               = true
  storage_type           = "gp2"
  apply_immediately       = true
  multi_az_load_balancing = true
  storage_encrypted       = true
  multi_az_key_id        = "${aws_key_pair.auth.id}"
  skip_final_snapshot     = true
  storage_type_ui_visible = true
  tags = {
    Name = "example-database"
  }
}

