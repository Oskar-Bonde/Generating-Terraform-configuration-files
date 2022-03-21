# Terraform Block with AWS provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS in region var.name_0
provider "aws" {
  region  = var.name_0
  profile = "default"
}

# Create variable called aws_region with default "us-east-1"
variable "name_0" {
  description = "Region in which AWS Resources to be created"
  type        = string
  default     = "us-east-1"
}

# Create variable called db_username that is sensitive
variable "name_1" {
  description = "AWS RDS Database Administrator Username"
  type        = string
  sensitive   = true
}

# create variable called db_password that is sensitive
variable "name_2" {
  description = "AWS RDS Database Administrator Password"
  type        = string
  sensitive   = true
}

# Create RDS MySQL Database with 5 allocated storage and username var.name_1 and password var.name_2
resource "aws_db_instance" "name_3" {
  allocated_storage   = 5
  engine              = "mysql"
  instance_class      = "db.t2.micro"
  name                = "mydb1"
  username            = var.name_1
  password            = var.name_2
  skip_final_snapshot = true
}


