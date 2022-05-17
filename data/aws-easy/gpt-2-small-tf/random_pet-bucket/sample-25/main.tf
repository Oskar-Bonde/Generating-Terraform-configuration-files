terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# AWS provider block
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Resource block to create a random pet name
resource "random_pet" "name_1" {
  keepers = {
    name = "random-name"
  }
}

# Create AWS S3 bucketresource "aws_s3_bucket" "random_name" {
  bucket = "${aws_s3_bucket.random_name.id}"
  acl    = "private"

  force_destroy = true

  tags {
    Name = "random-name"
  }
}

