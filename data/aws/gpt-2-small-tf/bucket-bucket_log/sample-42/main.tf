terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block: aws in us east 1 region and default profile
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# create an s3 bucket, set bucket to "my-tf-log-bucket" and acl to "log-delivery-write"
resource "aws_s3_bucket" "name_0" {
  bucket = "my-tf-log-bucket"
  acl    = "private"
  force_destroy = true
}

# an s3 bucket, use bucket "my-tf-test-bucket" and acl private. Make a logging block, with target bucket id and target prefix "log/"# and target prefix "log-delivery-write"
resource "aws_s3_bucket_policy" "name_1" {
  bucket = aws_s3_bucket.name_0.id
  policy = data.aws_iam_policy_document.log-delivery-write.json
}

