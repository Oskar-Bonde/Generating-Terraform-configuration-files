terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block with region us-east-1
provider "aws" {
  region = "us-east-1"
}

# Create S3 Bucket Resource. Set bucket to cookie
resource "aws_s3_bucket" "name_0" {
  bucket = "terraform-state-bucket"
  acl    = "private"
}

# Resource, aws s3 bucket object. Set key to index.html and use the s3 bucket id

# Create SQS queue resource
resource "aws_sqs_queue" "name_1" {
  name = "terraform-state-queue"
  #arn = "arn:aws:sqs:${var.aws_region}:${var.aws_account_id}:${var.environment}/${var.environment}/sqs/index.html"
  #policy = <<POLICY
#{
#  "Id": "policy-1",
#  "Version": "2012-10-17",
#  "Statement": [
#    {
#      "Sid": "1",
#      "Effect": "Allow",
#      "Principal": {
#        "AWS": "arn:aws:iam::${var.aws_account_id}:role/jenkins",
#        "Service": "sqs.amazonaws.com"
#    }
#    ]
#}
POLICY
}

