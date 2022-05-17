terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# AWS provider block
# Terraform block with AWS and random provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Resource block to create a random pet namevariable
resource "random_pet" "name_0" {
  name = "${var.random_name}"
}

# Create AWS S3 bucketvariable
resource "aws_s3_bucket" "name_1" {
  bucket = "${var.random_name}"
  acl    = "private"

  force_destroy = true

  lifecycle {
    ignore_changes = ["name"]
  }
}

