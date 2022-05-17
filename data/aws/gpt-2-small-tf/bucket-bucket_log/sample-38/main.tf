terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block: aws in us east 1 region
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# create an s3 bucket, set bucket to "my-tf-log-bucket" and acl to "log-delivery-write"
resource "aws_s3_bucket" "name_0" {
  bucket = "my-tf-log-bucket"
  acl    = "private"
  force_destroy = true

  versioning {
    enabled = true
  }

  tags {
    Name = "log-delivery-write"
  }
}

# an s3 bucket, use bucket "my-tf-test-bucket" and acl private. Make a logging block, with target bucket id and target prefix "log/"
resource "aws_s3_bucket_object" "name_1" {
  bucket = aws_s3_bucket.name_0.id
  key    = "log-delivery-write.tfstate"
  content = file("${path.module}/../../../logs/log-delivery-write.tfstate")
}

