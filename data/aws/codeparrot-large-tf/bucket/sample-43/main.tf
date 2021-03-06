terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider aws block with us east 1 region and default profile
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create S3 Bucket, set bucket to  "icecream"
resource "aws_s3_bucket" "name_0" {
  bucket = "icecream.com"
  acl    = "private"
  policy = <<POLICY
{
  "Id": "Policy14361034_example-1-1-1",
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "Stmt14361034_example-1-1-1",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::${var.aws_main_account_id}:root"
      },
      "Action": "s3:GetObject",
      "Resource": "arn:aws:s3:::${var.aws_main_account_id}:root"
    }
  ]
}

