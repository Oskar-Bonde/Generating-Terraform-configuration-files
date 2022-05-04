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
  name                 = "example_database_instance"
  username             = "admin"
  password             = "admin"
  vpc_security_group_ids = ["${aws_security_group.default_egress.id}"]
  db_subnet_group_name   = "${aws_db_subnet_group.default_egress.id}"
  parameter_group_name   = "default.mysql5.6"
  vpc_security_group_ids = ["${aws_security_group.default_egress.id}"]
  skip_final_snapshot    = true
  copy_tags_to_snapshot  = true

  tags = {
    Name = "example_database_instance"
  }
}
