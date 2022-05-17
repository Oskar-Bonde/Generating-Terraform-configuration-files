terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider aws block with us east 1 region and default profile
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create S3 Bucket, set bucket to  "icecream"
resource "aws_s3_bucket" "name_0" {
  bucket = "icecream-terraform"
  acl    = "private"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "s3:GetObject",
        "s3:ListBucket",
        "s3:GetObjectAcl",
        "s3:GetObject",
        "s3:GetObjectAclVersion",
        "s3:GetObjectAclVersionAclVersionAclVersion",
        "s3:GetObjectAclVersionAclVersionAclVersionAclVersionAclVersion",
        "s3:GetObjectAclVersionAclVersionAclVersionAclVersionAclVersionAclVersionAclVersion",
        "s3:GetObjectAclVersionAclVersionAclVersionAclVersionAclVersionAclVersionAclVersionAclVersion",
        "s3:GetObjectAclVersionAclVersionAclVersionAclVersionAclVersionAclVersionAclVersionAclVersionAclVersion",
        "s3:GetObjectAclVersionAclVersionAclVersionAclVersionAclVersionAclVersionAclVersionAclVersionAclVersionAclVersion",
        "s3:GetObjectAclVersionAclVersionAclVersionAclVersionAclVersionAclVersionAclVersionAclVersionAclVersionAclVersion",
        "s3:GetObjectAclVersionAclVersionAclVersionAclVersionAclVersionAclVersionAclVersionAclVersionAclVersionAclVersion",
        "s3:GetObjectAclVersionAclVersionAclVersionAclVersionAclVersionAclVersionAclVersionAclVersionAclVersionAclVersionAclVersion",
        "s3:GetObjectAclVersionAclVersionAclVersionAclVersionAclVersionAclVersionAclVersionAclVersionAclVersionAclVersionAclVersion",
        "s3:GetObjectAclVersionAclVersionAclVersionAclVersionAclVersionAclVersionAclVersionAclVersionAclVersionAclVersion",
        "s3:GetObjectAclVersionAclVersionAclVersionAclVersionAclVersionAclVersionAclVersionAclVersionAclVersionAclVersionAclVersion",
        "s3:GetObjectAclVersionAclVersionAclVersionAclVersionAclVersionAclVersion
}

