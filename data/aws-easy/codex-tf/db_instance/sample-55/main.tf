terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS block
provider "aws" {
  region = "us-east-1"
}

# Create Database instance
resource "aws_db_instance" "name_0" {
  identifier = "mydb"
  instance_class = "db.t2.micro"
  allocated_storage = 20
  engine = "mysql"
  engine_version = "5.7.mysql_aurora.2.03.2"
  name = "mydb"
  username = "foo"
  password = "bar"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot = true
  vpc_security_group_ids = ["${aws_security_group.db.id}"]
  subnet_group_name = "${aws_db_subnet_group.db.name}"
  tags = {
    Name = "mydb"
  }
}
