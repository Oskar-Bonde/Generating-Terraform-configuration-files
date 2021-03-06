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
  identifier = "mydb"
  allocated_storage          = 10
  engine                      = "mysql"
  engine_version              = "5.6.2"
  instance_class              = "db.t2.micro"
  name                         = "mydb"
  username                     = "myuser"
  password                     = "myuser"
  vpc_security_group_ids        = ["${aws_security_group.db_sg.id}"]
  db_subnet_group_name          = "db"
  subnet_group_name            = "db"
  vpc_security_group_ids        = ["${aws_security_group.db_sg.id}"]
  parameter_group_name           = "mysql"
  parameter_group_name          = "mysql_postgres"
  vpc_security_group_ids        = ["${aws_security_group.db_sg.id}"]
  parameter_group_name           = "mysql_postgres_postgres"
  vpc_subnet_group_name          = "db"
  vpc_security_group_ids        = ["${aws_security_group.db_sg.id}"]
  parameter_group_name            = "mysql_postgres_postgres"
  vpc_subnet_group_name          = "db"
  vpc_security_group_ids         = ["${aws_security_group.db_sg.id}"]
  parameter_group_name            = "mysql_postgres_postgres"
  vpc_subnet_group_name          = "db"
  vpc_security_group_ids        = ["${aws_security_group.db_sg.id}"]
  parameter_group_name           = "mysql_postgres_postgres"
  vpc_subnet_group_name          = "db"
  vpc_security_group_ids 
}

