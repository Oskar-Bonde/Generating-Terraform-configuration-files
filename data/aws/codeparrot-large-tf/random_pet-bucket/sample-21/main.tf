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
  length  = 5
  special = false
  upper   = false
}

# Resource Block: Create AWS S3 Bucket with bucket set as random pet name
resource "aws_s3_bucket" "name_2" {
  bucket = "mybucketname"
  acl    = "private"
  policy = <<POLICY
{
  "Id": "Policy14361034_example",
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "Stmt14361034_example",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::${var.aws_main_account_id}:root"
      },
      "Action": "s3:*",
      "Resource": "arn:aws:s3:::${var.aws_main_account_id}:${var.aws_account_id}:s3:::*",
      "Condition": {
        "StringEquals": {
          "aws:SourceArn": {
            "aws:SourceAccount": {
              "aws:SourceArnType": "AWS"
            }
          },
          "aws:SourceAccount": {
            "aws:SourceArn": {
              "aws:SourceAccount": {
                "aws:SourceArnType": "AWS"
              }
            }
          },
          "aws:SourceAccount": {
            "aws:SourceArn": {
              "aws:SourceAccount": {
                "aws:SourceArnType": "AWS"
              }
            }
          }
        }
      }
    }
  ]
}

