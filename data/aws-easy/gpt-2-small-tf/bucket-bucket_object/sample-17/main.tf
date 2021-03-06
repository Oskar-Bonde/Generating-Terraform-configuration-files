provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block with an EC2 instance
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Create S3 Bucket Resource
resource "aws_s3_bucket" "name_1" {
  bucket                   = "testingBucket"
  acl                       = "private"
  force_destroy             = true
  force_update             = true
  force_delete             = true
  force_import              = true
  s3_origin_access_identity = "example"
  s3_origin_delete_policy = "DeleteS3Bucket"
  s3_origin_bucket_policy = "DeleteBucket"
}

# Create S3 Bucket object
resource "aws_s3_bucket_object" "name_2" {
  bucket                   = "testingBucket"
  key                     = "tests/ec2demo.zip"
  source                  = "../../../modules/aws/s3/bucket"
  server_side_encryption = "AES256"
}

