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
  bucket                  = "testingBucket"
  acl                      = "private"
  force_destroy            = true
  force_update            = true
  force_delete            = true
  iam_instance_profile = "${aws_iam_instance_profile.ec2demo.name}"
}

# Create S3 Bucket object
resource "aws_s3_bucket_object" "name_2" {
  bucket                  = "testingBucket"
  key                    = "tests/ha.example.com/ha.example.com/backups/etcd/events/control/etcd-cluster-spec"
  provider                = aws.files
  server_side_encryption = "AES256"
}

