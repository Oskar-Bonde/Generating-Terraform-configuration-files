provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# AWS provider block
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Resource block to create a random pet name
resource "random_pet_name" "name_1" {
  byte_length = 8
}

# Create AWS S3 bucket for the PET
resource "aws_s3_bucket" "name_2" {
  bucket = "terraform-example-terraform-example"
  acl    = "private"

  versioning {
    enabled = true
  }

  lifecycle_rule {
    enabled = true
  }
}

