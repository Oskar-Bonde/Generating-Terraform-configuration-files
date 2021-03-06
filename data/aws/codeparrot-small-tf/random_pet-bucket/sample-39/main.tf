terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# AWS provider block in region us-east-1
provider "aws" {
  region = "us-east-1"
}

# Resource block to create a random pet name of length 5 with separator -
# see https://docs.aws.amazon.com/AmazonECS/latest/developerguide/instance-name-random
resource "random_pet" "name_0" {
  length = 5
}

# Resource Block: Create AWS S3 Bucket with bucket set as random pet name

resource "aws_s3_bucket" "name_1" {
  bucket = "terraform-example-bucket"
  acl    = "private"

  # To create a new bucket with an empty name, you must create a bucket with the same name
  # and the bucket will be created with the same name.
  force_destroy = true

  versioning {
    enabled = true
  }

  tags = {
    Name = "terraform-example-bucket"
  }
}

