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
  bucket = "ec2demo-s3"
  acl    = "private"

  tags {
    Name = "ec2demo-s3"
  }
}

# Create S3 Bucket objectvariable "s3_bucket_name" {
  type = "string"
}

