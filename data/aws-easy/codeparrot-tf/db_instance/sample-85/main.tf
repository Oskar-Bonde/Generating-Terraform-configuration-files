rovider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS block
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create Database instance
resource "aws_db_instance" "name_0" {
  identifier_prefix  = "example"
  allocated_storage = 10
  engine            = "mysql"
  engine_version    = "5.6.27"
  instance_class    = "db.t2.micro"
  name              = "example_database_instance"
  username          = "admin"
  password          = "admin"
  multi_az            = "false"
  publicly_accessible = "true"
  vpc_security_group_ids = ["${aws_security_group.default_egress.id}"]
  db_subnet_group_name   = "${aws_db_subnet_group.example.name}"
  parameter_group_name = "default.mysql5.6"
  backup_retention_period = "7"
  multi_az            = "false"
  publicly_accessible = "false"
  tags = {
    Name = "example_database_instance"
  }
  tags = {
    Name = "example_database_instance"
  }
  # Tags are used to test the correct handling of tags
  # https://github.com/hashicorp/terraform/issues/2499
  # https://github.com/hashicorp/terraform/issues/2542
  # https://github.com/hashicorp/terraform/issues/2543
  # https://github.com/hashicorp/terraform/issues/2544
  # https://github.com/hashicorp/terraform/issues/2545
  # https://github.com/hashicorp/terraform/issues/2546
  # https://github.com/hashicorp/terraform/issues/2547
  # https://github.com/hashicorp/terraform/issues/2548
  # https://github.com/hashicorp/terraform/issues/2549
  # https://github.com/hashicorp/terraform/issues/2550
  # https://github.com/hashicorp/terraform/issues/2551
  # https://github.com/hashicorp/terraform/issues/2552
  # https://github.com/hashicorp/terraform/issues/2553
  # https://github.com/hashicorp/terraform/issues/2554
  # https://github.com/hashicorp/terraform/issues/2555
  # https://github.com/hashicorp/terraform/issues/2556
  # https://github.com/hashicorp/terraform/issues/2557
  # https://github.com/hashicorp/terraform/issues/2558
  # https://github.com/hashicorp/terraform/issues/2559
  # https://github.com/hashicorp/terraform/issues/2560
  # https://github.com/hashicorp/terraform/issues/2561
  # https://github.com/hashicorp/terraform/issues/2562
  # https://github.com/hashicorp/terraform/issues/2563
  # https://github.com/hashicorp/terraform/issues/2564
  # https://github.com/hashicorp/terraform/issues/2565
  # https://github.com/hashicorp/terraform/issues/2566
  # https://github.com/hashicorp/
}

