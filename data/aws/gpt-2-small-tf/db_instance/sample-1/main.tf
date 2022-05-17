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
  identifier                                 = "db-1"
  allocated_storage                           = 10
  storage_type                                = "gp2"
  engine                                     = "mysql"
  engine_version                              = "5.6.0"
  instance_class                              = "db.t2.micro"
  name                                         = "db-1"
  username                                     = "foo"
  password                                     = "bar"
  vpc_security_group_ids                      = [aws_security_group.db_sg.id]
  db_subnet_group_name                        = aws_db_subnet_group.db_subnet_group.name
  subnet_group_name                          = aws_db_subnet_group.db_subnet_group.name
  final_snapshot_identifier                = "db-1"
  final_snapshot_identifier_version = "5.6.0"
}

