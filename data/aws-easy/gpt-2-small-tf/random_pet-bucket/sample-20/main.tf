terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# AWS provider block
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Resource block to create a random pet namevariable
resource "random_pet" "name_1" {
  keepers = {
    name = "random_name"
  }
}

# Create AWS S3 bucketvariable
resource "aws_s3_bucket" "name_2" {
  bucket = "${var.random_name}"
  acl    = "private"
}

