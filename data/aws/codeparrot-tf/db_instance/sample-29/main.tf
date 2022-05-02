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
  identifier_prefix = "rds-mysql-db-"
  allocated_storage      = 5
  engine                 = "mysql"
  engine_version         = "5.7.11"
  instance_class         = "db.t2.micro"
  name                   = "rds-mysql-db-${count.index}"
  username               = "foo"
  password               = "barbaz"
  publicly_accessible    = false
  vpc_security_group_ids = ["${aws_security_group.rds_mysql_sg.id}"]
  db_subnet_group_name   = "${aws_db_subnet_group.rds_mysql_subnet_group.name}"
  parameter_group_name    = "default.mysql5.6"
  backup_retention_period = 7
  apply_immediately       = true
  multi_az               = false
  storage_type            = "gp2"
  apply_immediately       = true
  storage_encrypted       = true
  maintenance_window      = "sun:04:30-sun:04:30"
  multi_az_load_balancing = true
  backup_window           = "09:19-10:10"
  maintenance_window      = "sun:04:30-sun:04:30"
  skip_final_snapshot    = true
  copy_tags_to_snapshot  = true
  db_subnet_group_name   = "${aws_db_subnet_group.rds_mysql_subnet_group.name}"
  tags = {
    Name = "rds-mysql-db-${count.index}"
  }
}

