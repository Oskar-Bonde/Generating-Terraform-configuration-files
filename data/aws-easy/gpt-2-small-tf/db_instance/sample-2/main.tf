rovider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS block with an EC2 instance
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Create Database instance
resource "aws_db_instance" "name_1" {
  identifier                   = "db"
  allocated_storage            = 10
  engine                       = "mysql"
  engine_version               = "5.6.1"
  instance_class               = "db.t2.micro"
  name                         = "db"
  username                     = "dbuser"
  password                     = "dbuser"
  vpc_security_group_ids        = ["${aws_security_group.db.id}"]
  db_subnet_group_name          = "db-subnet-group"
  parameter_group_name          = "mysql-parameter-group"
  parameter_group_name_override = "true"
  vpc_security_group_ids        = ["${aws_security_group.db.id}"]
  parameter_group_name           = "mysql-parameter-group"
  parameter_group_name_override = "true"
  vpc_security_group_ids         = ["${aws_security_group.db.id}"]
  parameter_group_name            = "mysql-parameter-group"
  parameter_group_name_override = "true"
  vpc_subnet_group_name           = "db-subnet-group"
  parameter_group_name_override = "true"
  vpc_security_group_ids         = ["${aws_security_group.db.id}"]
  parameter_group_name            = "mysql-parameter-group"
  parameter_group_name_override = "true"
  vpc_subnet_group_name           = "db-subnet-group"
  parameter_group_name_override = "true"
  vpc_security_group_ids         = ["${aws_security_group.db.id}"]
  parameter_group_name            = "mysql-parameter-group"
  parameter_group_name_override = "true"
  vpc_subnet_group_
}

