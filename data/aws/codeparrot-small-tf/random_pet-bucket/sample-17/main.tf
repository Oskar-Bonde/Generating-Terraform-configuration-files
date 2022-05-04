terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
    }
  }
}

# AWS provider block in region us-east-1resource-instance-type-t2.micro instance type
provider "random" {
  version = "~> 2.0"
}

# Resource block to create a random pet name of length 5 with separator - this is required for the terraform provider to work properly
resource "random_pet" "name_0" {
  length  = 5
  special = false
}

# Resource Block: Create AWS S3 Bucket with bucket set as random pet name
resource "aws_s3_bucket" "name_1" {
  bucket = "terraform-example-bucket-${random_pet.name_0.id}"
  acl    = "private"

  # To create the bucket, we need to set the encryption key to the actual encryption key
  # that was used to encrypt the file.
  # https://cloud.google.com/storage/docs/reference/rest/v1/projects.locations.locations#encryption_key_id
  lifecycle {
    prevent_destroy = true
  }
}

