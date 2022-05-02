provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# AWS provider block in region us-east-1
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Resource block to create a random pet name of length 5 with separator - [a-z]
resource "random_pet_name" "name_1" {
  keepers = {
    a = "a"
    b = "b"
  }
  byte_length = 5
}

# Resource Block: Create AWS S3 Bucket with bucket set as random pet name
resource "aws_s3_bucket" "name_2" {
  bucket        = "terraform-example-bucket"
  acl           = "private"
  force_destroy = true
  tags = {
    Name = "terraform-example-bucket"
  }
}

