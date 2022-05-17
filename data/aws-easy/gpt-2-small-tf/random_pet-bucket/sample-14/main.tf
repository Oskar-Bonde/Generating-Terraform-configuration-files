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
  byte_length = 2
}

# Create AWS S3 bucket
resource "aws_s3_bucket" "name_1" {
  bucket                        = "testingBucket"
  acl                             = "private"
  force_destroy                   = true
  force_update                  = true
  force_delete                   = true
  force_create_ssl             = true
  enable_cdn                     = false
  enable_cdn_logging            = true
  enable_cdn_monitoring         = true
  enable_cdn_logging_interval   = 300
  enable_cdn_monitoring_interval = 300
  enable_cdn_logging_interval_high = true
  enable_cdn_monitoring_interval_low = true
  enable_cdn_logging_interval_low = true
  enable_cdn_logging_interval_high = true
  enable_cdn_logging_interval_low = true
  enable_cdn_logging_interval_high = true
  enable_cdn_logging_interval_low = true
  enable_cdn_logging_interval_high = true
  enable_cdn_logging_interval_low = true
  enable_cdn_logging_interval_high = true
  enable_cdn_logging_interval_low = true
  enable_cdn_logging_interval_high = true
  enable_cdn_logging_interval_low = true
  enable_cdn_logging_interval_high = true
  enable_cdn_logging_interval_low = true
  enable_cdn_logging_interval_high = true
  enable_cdn_logging_interval_low = true
  enable_cdn_logging_interval_high = true
  enable_cdn_logging_interval_high = true
  enable_cdn_logging_interval_low = true
  enable_cdn_logging_interval_low = true
  enable_cdn_logging_interval_low = true
  enable_cdn_logging_interval_low = true
  enable_cdn_logging_interval_low = true
  enable_cdn_logging_interval_low = true
  enable_cdn_logging_interval_low = true
  enable_cdn_logging_interval_low = true
}

