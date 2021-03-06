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
  identifier_prefix = "t2db-"
  allocated_storage    = 5
  engine                 = "mysql"
  engine_version       = "5.6.27"
  instance_class         = "db.t2.micro"
  name                   = "t2db-${var.environment}"
  username               = "foo"
  password               = "barbaz"
  db_subnet_group_name   = "${aws_db_subnet_group.private_subnet_group.name}"
  parameter_group_name    = "${aws_db_parameter_group.default_postgres_12_name}"
  vpc_security_group_ids = ["${aws_security_group.default_security_group.id}"]
  skip_final_snapshot    = true
  storage_type            = "gp2"
  apply_immediately       = true
  multi_az                = true
  storage_encrypted         = true
  apply_immediately_nat     = true
  storage_type_controller_zones = ["us-east-1a", "us-east-1b"]
  maintenance_window      = "mon:05:00-mon:06:00"
  multi_az_load_balancing   = true
  publicly_accessible     = false
  storage_type_cloudfront_code = "AZURE"
  tags = {
    Name = "t2db-${var.environment}"
  }
}

