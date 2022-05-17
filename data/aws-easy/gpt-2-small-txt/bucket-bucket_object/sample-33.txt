provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block with AWS provider
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create S3 Bucket Resourcevariable "bucket_name" {
  type        = "string"
  description = "Name of the bucket"
}

# Create S3 Bucket objectvariable "bucket_object" {
  type        = "string"
  description = "Name of the object"
}

