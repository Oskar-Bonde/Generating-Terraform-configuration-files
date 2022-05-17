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
  separator = "-"
}

# Create AWS S3 bucket
resource "aws_s3_bucket" "name_1" {
  bucket                          = "my-bucket"
  acl                               = "private"
  force_destroy                     = true
  force_delete                     = true
  force_serialization               = true
  enable_cdn                        = true
  enable_cdn_logging               = true
  enable_cdn_monitoring            = true
  enable_cdn_logging_logs            = true
  enable_cdn_scopes                 = true
  enable_cdn_scopes_all            = true
  enable_cdn_log_s                 = true
  enable_cdn_log_s_all            = true
  enable_cdn_log_s_all_logs = true
  enable_cdn_log_s_max_age_in_minutes = true
  enable_cdn_log_s_max_age_in_days   = true
  enable_cdn_log_s_log_max_age_in_days_seconds = true
  enable_cdn_log_s_log_retention_in_days = true
  enable_cdn_log_s_log_retention_in_days_seconds = true
  enable_cdn_log_s_max_age_in_days_seconds = true
  enable_cdn_log_s_log_retention_in_days_days_seconds = true
  enable_cdn_log_s_max_age_in_days_seconds = true
  enable_cdn_log_s_log_retention_in_days_seconds = true
  enable_cdn_log_s_log_retention_in_days_seconds = true
  enable_cdn_log_s_log_retention_in_days_seconds = true
  enable_cdn_log_s_log_retention_in_days_seconds = true
  enable_cdn_log_s_log_retention_in_days_seconds
}

