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

# Create Database instance#
resource "aws_db_instance" "name_1" {
  identifier                      = "db-01"
  allocated_storage               = 20
  engine                          = "mysql"
  engine_version                   = "5.6.19"
  instance_class                   = "db.t2.micro"
  name                             = "db-01"
  username                         = "db-01"
  password                         = "db-01"
  vpc_security_group_ids           = [aws_security_group.db_sg.id]
  db_subnet_group_name             = aws_db_subnet_group.db_subnet_group.name
  subnet_group_name                = aws_db_subnet_group.db_subnet_group.name
  final_snapshot_identifier       = "db-01"
  final_snapshot_identifier_version = "5.6.19"
  final_snapshot_identifier_version_tag = "db-01"
  final_snapshot_identifier         = "db-01"
  final_snapshot_identifier           = "db-01"
  final_snapshot_identifier            = "db-01"
  final_snapshot_identifier            = "db-01"
  final_snapshot_identifier            = "db-01"
  final_snapshot_identifier             = "db-01"
  final_snapshot_identifier            = "db-01"
  final_snapshot_identifier            = "db-01"
  final_snapshot_identifier            = "db-01"
  final_snapshot_identifier            = "db-01"
  final_snapshot_identifier            = "
}

