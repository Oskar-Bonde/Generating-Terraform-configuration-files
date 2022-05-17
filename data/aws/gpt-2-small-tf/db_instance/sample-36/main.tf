terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS in region "us-east-1"
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create RDS MySQL Database with 5 allocated storage and username foo and password barbaz. Instance class t2 micro and skip final snapshot.
resource "aws_db_instance" "name_0" {
  identifier = "db-1"
  allocated_storage = 10
  username = "foo"
  password = "bar"
  instance_class = "db.t2.micro"
  subnet_id = "subnet-1"
  name = "db-1"
  username = "foo"
  password = "bar"
  instance_class = "db.t2.micro"
  vpc_security_group_ids = [aws_security_group.db.id]
  db_subnet_group_name = aws_db_subnet_group.db.name
  parameter_group_name = aws_db_parameter_group.db.name
  parameter_group_version = "1.0.0"
  multi_az = true
}

