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

# Create Database instancevariable
resource "aws_db_instance_variable" "name_0" {
  name = "db_instance_variable"
  type = "map"
  default = {
    engine = "mysql"
    engine_version = "5.6.27"
    instance_class = "db.t2.micro"
    allocated_storage = 10
    storage_type = "gp2"
    allocated_storage_gbs = 10
    backup_retention_period = 7
    maintenance_window = "tue:10:00-tue:11:00"
    maintenance_window_length = "6"
    instance_class = "db.t2.micro"
    name = "wordpress"
    username = "wordpress"
    password = "wordpress"
    vpc_security_group_ids = ["${aws_security_group.default.id}"]
    db_subnet_group_name = "${aws_db_subnet_group.default.name}"
    vpc_security_group_ids = ["${aws_security_group.default.id}"]
    db_subnet_group_description = "db subnet group"
    db_subnet_group_name = "${aws_db_subnet_group.default.name}"
    username = "wordpress"
    password = "wordpress"
    db_subnet_group_description = "db subnet group"
    username = "wordpress"
    password = "wordpress"
    db_subnet_group_description = "db subnet group"
    backup_retention_period = 7
    maintenance_window = "tue:10:00-tue:11:00"
    maintenance_window_length = "6"
    instance_class = "db.t2.micro"
    name = "wordpress"
    username = "wordpress"
    password = "wordpress"
    vpc_security_group_ids = ["${aws_security_group.default.id}"]
    db_subnet_group_name = "${aws_db_subnet_group.default.name}"
    vpc_security_group_ids = ["${aws_security_group.default.id}"]
    db_subnet_group_description = "db subnet group"
    db_subnet_group_name = "${aws_db_subnet_group.default.name}"
    backup_retention_period = 7
    maintenance_window = "tue:10:00-tue:11:00"
    maintenance_window_length = "6"
    instance_class = "db.t2.micro"
    name = "wordpress"
    username = "wordpress"
    password = "wordpress"
    vpc_security_group_ids = ["${aws_security_group.default.id}"]
    db_subnet_group_name = "${aws_db_subnet_group.default.name}"
    vpc_security_group_ids = ["${aws_security_group.default.id}"]
    db_subnet_group_description = "db subnet group"
    db_subnet_group_name = "${aws_db_subnet_group.default.name}"
    backup_retention_period = 7
    maintenance_window = "tue:10:00-tue:11:00"
    maintenance_window_length = "6"
    instance_class = "db.t2.micro"
    name = "wordpress"
    username = "wordpress"
    password = "wordpress"
    vpc_security_group_ids = ["${aws_security_group.default.id}"]
    db_subnet_group_name = "${aws_db_subnet_group.default.name}"
    backup_retention_period
}

