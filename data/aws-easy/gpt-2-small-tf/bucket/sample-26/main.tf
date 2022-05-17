terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider aws block with AWS provider
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create S3 Bucket resource
resource "aws_s3_bucket" "name_0" {
  bucket                      = "testingBucket"
  acl                          = "private"
  force_destroy                = true
  force_update                = true
  force_partitioning           = true
  enable_cdn                  = true
  enable_cdn_logging         = true
  enable_cdn_monitoring      = true
  enable_cdn_scaling        = true
  enable_cdn_staging         = true
  enable_cdn_logging         = true
  enable_cdn_scaling        = true
  enable_cdn_staging        = true
  enable_cdn_monitoring      = true
  enable_cdn_staging        = true
  enable_cdn_logging        = true
  enable_cdn_staging        = true
  enable_cdn_staging_logging = true
  enable_cdn_staging_logging_staging = true
  enable_cdn_staging_logging_staging_log = true
  enable_cdn_staging_logging_log_staging_log = true
  enable_cdn_staging_logging_log_staging_log = true
  enable_cdn_staging_logging_log_staging_log = true
  enable_cdn_staging_logging_log_staging_log = true
  enable_cdn_logging_log_staging_log_staging_log = true
  enable_cdn_logging_log_staging_log_staging_log = true
  enable_cdn_logging_log_staging_log_staging_log = true
  enable_cdn_logging_log_staging_log_staging_log = true
  enable_cdn_logging_log_staging_log_staging_log = true
  enable_cdn_logging_log_staging_log_staging_log = true
  enable_cdn_logging_log_staging_log_staging_log = true
  enable_cdn_logging_log_staging_log_staging_log = true
  enable_cdn_logging_log_staging_log_staging_log = true
  enable_cdn_logging_log_staging_log_staging_log = true
  enable_cdn_logging_log_staging_log_staging_log = true
  enable_cdn_logging_log_staging_log_staging_log = true
  enable_cdn_log
}

