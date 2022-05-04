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
  vpc_security_group_ids = [aws_security_group.example.id]
  db_subnet_group_name   = aws_db_subnet_group.example.name
  parameter_group_name = "default.mysql5.6"
  storage_type         = "gp2"
  multi_az            = false
  backup_retention_period = 7
  maintenance_window    = "tue:10:19-tue:11:19"
  multi_az_threshold   = 2
  backup_window        = "09:19-09:19"
  maintenance_window_length = "7"
  vpc_security_group_ids = [aws_security_group.example.id]
  tags = {
    Name = "example"
  }
}

