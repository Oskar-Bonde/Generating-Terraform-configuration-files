terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block with region us-east-1
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867"
  instance_type = "t2.micro"
}

# Create S3 Bucket Resource. Set bucket to cookie
resource "aws_s3_bucket" "name_1" {
  bucket = "terraform-state"
  acl    = "private"
}

# Resource, aws s3 bucket object. Set key to index.html and use the s3 bucket id
# and the object content.
resource "aws_s3_bucket_object" "name_2" {
  bucket = aws_s3_bucket.name_1.id
  key    = "index.html"
  content = file("index.html")
}

