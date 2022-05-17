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

# Resource block to create a random pet name
resource "random_pet" "name_0" {
  length  = 8
  prefix  = "random-name"
  keepers = {
    random_name = "my-random-name"
  }
}

# Create AWS S3 bucket
resource "aws_s3_bucket" "name_1" {
  bucket = "${aws_s3_bucket.name_1.id}"
  acl    = "private"

  versioning {
    enabled = true
  }

  lifecycle {
    ignore_changes = [
      acl                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
}
