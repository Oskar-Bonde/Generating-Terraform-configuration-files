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
  identifier = "db-instance"
  allocated_storage = 10
  instance_class = "db.t2.micro"
  name          = "db-instance"
  username      = "foo"
  password      = "bar"
  publicly_accessible = true
  backup_retention_period = 7
  multi_az          = true
  multi_az_max     = true
  multi_az_min     = true
  multi_az_max    = true
  multi_az_desired = true
  multi_az_max_age = 10
  multi_az_desired_days = 7
  multi_az_max_age_hours = 7
  multi_az_min_age = 7
  multi_az_max_age_min_age = 7
  multi_az_min_age_second = 7
  multi_az_min_age_second_day = 7
  multi_az_min_age_second_hour = 7
  multi_az_min_age_second_minute = 7
  multi_az_min_age_second_second_second_special = 7
  multi_az_min_age_second_second_second_special_day = 7
  multi_az_min_age_second_second_second_special_hour = 7
  multi_az_min_age_second_second_second_second_second_second_special_second = 7
  multi_az_min_age_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_second_
}

