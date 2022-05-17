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
  bucket = "ec2demo-logs"
  acl    = "private"

  tags {
    Name = "ec2demo-logs"
  }
}

# Create S3 Bucket object
resource "aws_s3_bucket_object" "name_2" {
  bucket = "ec2demo-logs"
  key    = "logs/ec2demo-logs.logs"
  source = "../logs/ec2demo-logs"
}

