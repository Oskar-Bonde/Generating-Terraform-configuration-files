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
    username = "username",
    password = "password",
    db_name = "db_name"
  }
}

