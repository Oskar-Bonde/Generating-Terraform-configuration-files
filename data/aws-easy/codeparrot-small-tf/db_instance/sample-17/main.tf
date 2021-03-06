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
  engine_version       = "5.6.27"
  instance_class       = "db.t2.micro"
  name                 = "example"
  username             = "admin"
  password             = "changeme"
  vpc_security_group_ids = ["${aws_security_group.default.id}"]
  db_subnet_group_name   = "${aws_db_subnet_group.example.id}"
  parameter_group_name = "default.mysql5.6"
  backup_retention_period = 7
  multi_az            = true
  backup_window          = "07:00-07:00"
  maintenance_window   = "sun:04:00-sun:04:30"
  backup_window_length = "7"
  vpc_security_group_ids = ["${aws_security_group.default.id}"]
  tags = {
    Name = "example"
  }
}

