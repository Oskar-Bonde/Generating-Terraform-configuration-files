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
  identifier_prefix = "t2"
  allocated_storage    = 5
  engine                 = "mysql"
  engine_version         = "5.6.27"
  instance_class         = "db.t2.micro"
  name                   = "t2"
  username               = "foo"
  password               = "barbaz"
  publicly_accessible    = false
  vpc_security_group_ids = ["${aws_security_group.db_rds_sg.id}"]
  db_subnet_group_name   = "${aws_db_subnet_group.db_subnet_group.id}"
  parameter_group_name    = "default.mysql5.6"
  multi_az                = false
  storage_type            = "gp2"
  apply_immediately       = true
  multi_az_load_balancing = true
  storage_encrypted       = false
  apply_immediately       = true
  engine_version          = "5.7.11"
  tags = {
    Name = "t2"
  }
  # DB Subnet Group
  subnet_ids = ["${aws_subnet.db_subnet_1.id}", "${aws_subnet.db_subnet_2.id}"]
  tags = {
    Name = "t2"
  }
  # DB Parameter Group
  parameter_group_name = "default.mysql5.6"
  # DB engine
  engine = "mysql"
  engine_version = "5.7.11"
  # DB username
  username = "foo"
  # DB password
  password = "barbaz"
  # DB storage
  storage_type = "gp2"
  # DB engineVersion
  engine_version = "5.7.11"
  # DB username
  username = "foo"
  # DB password
  password = "barbaz"
  # DB storage
  storage_encrypted = true
  apply_immediately       = true
  multi_az                = false
  storage_type            = "gp2"
  apply_immediately       = true
  storage_encrypted       = true
  engine_version          = "5.7.11"
  tags = {
    Name = "t2"
  }
}

