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
  #arn = "arn:aws:sqs:${var.aws_region}:${var.aws_account_id}:${var.aws_s3_bucket}"
  #policy = <<POLICY
#{
#  "Version": "2012-10-17",
#  "Id": "Policy14141414141414",
#  "Statement": [
#    {
#      "Sid": "1",
#      "Effect": "Allow",
#      "Principal": {
#        "AWS": "arn:aws:iam::${var.aws_account_id}:root"
#    },
#    {
#      "Sid": "2",
#      "Effect": "Allow",
#      "Principal": {
#        "AWS": "arn:aws:iam::${var.aws_account_id}:root"
#    },
#    {
#      "Sid": "3",
#      "Effect": "Allow",
#      "Principal": {
#        "AWS": "arn:aws:iam::${var.aws_account_id}:root"
#    },
#    {
#      "Sid": "4",
#      "Effect": "Allow",
#      "Principal": {
#        "AWS": "arn:aws:iam::${var.aws_account_id}:root"
#    },
#    {
#      "Sid": "5",
#      "Effect": "Allow",
#      "Principal": {
#        "AWS": "arn:aws:iam::${var.aws_account_id}:root"
#    },
#    {
#      "Sid": "6",
#      "Effect": "Allow",
#      "Principal": {
#        "AWS": "arn:aws:iam::${var.aws_account_id}:root"
#    },
#    {
#      "Sid": "7",
#      "Effect": "Allow",
#      "Principal": {
#        "AWS": "arn:aws:iam::${var.aws_account_id}:root"
#    },
#    {
#      "Sid": "8",
#      "Effect": "Allow",
#      "Principal": {
#        "AWS": "arn:aws:iam::${var.aws_account_id}:root"
#    },
#    {
#      "Sid": "9",
#      "Effect": "Allow",
#      "Principal": {
#        "AWS": "arn:aws:iam::${var.aws_account_id}:root"
#    },
#    {
#      "Sid": "10",
#      "Effect": "Allow",
#      "Principal": {
#        "AWS": "arn:aws:iam::${var.aws_account_id}:root"
#    },
#    {
#
}

