provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block with region us-east-1
provider "aws" {
  region = "us-east-1"
}

# Create S3 Bucket Resource. Set bucket to cookie bucket name.
resource "aws_s3_bucket" "name_0" {
  bucket = "terraform-state.tfstate"
  acl    = "private"
  force_destroy = true
}

# Resource, aws s3 bucket object. Set key to index.html and use the s3 bucket id
# for index.html index.html.
resource "aws_s3_bucket_object" "name_1" {
  bucket = aws_s3_bucket.name_0.id
  key    = "index.html"
  content = <<EOF
<html>
<head>
<title>
<a href="${aws_s3_bucket.name_0.website_endpoint}" rel="stylesheet">
<link href="//" rel="stylesheet">
<script src="//" type="text/x-shellscript" rel="stylesheet">
<script src="//" type="text/x-shellscript" rel="stylesheet">
<script src="//" type="text/x-shellscript" rel="stylesheet">
<script src="//" type="text/x-shellscript" rel="stylesheet">
<script src="//" type="text/x-shellscript" rel="stylesheet">
<script src="//" type="text/x-shellscript" rel="stylesheet">
<script src="//" type="text/x-shellscript" rel="stylesheet">
<script src="//" type="text/x-shellscript" rel="stylesheet">
<script src="//" type="text/x-shellscript" rel="stylesheet">
<script src="//" type="text/x-shellscript" rel="stylesheet">
<script src="//" type="text/x-shellscript" rel="stylesheet">
<script src="//" type="text/x-shellscript" rel="stylesheet">
<script src="//" type="text/x-shellscript" rel="stylesheet">
<script src="//" type="text/x-shellscript" rel="stylesheet">
<script src="//" type="text/x-shellscript" rel="stylesheet">
<script src="//" type="text/x-shellscript" rel="stylesheet">
<script src="//" type="text/x-shellscript" rel="stylesheet">
<script src="//" type="text/x-shellscript" rel="stylesheet">
<script src="//" type="text/x-shellscript" rel="stylesheet">
<script src="//" type="text/x-shellscript" rel="stylesheet">
<script src="//" type="text/x-shellscript" rel="stylesheet">
<script src="//" type="text/x-shellscript" rel="stylesheet">
<script src="//" type="text/x-shellscript" rel="stylesheet">
<script src="//" type="text/x-shellscript" rel="stylesheet">
<script src="//" type="text/x-shellscript" rel="stylesheet">
<script src="//" type="text/x-shellscript" rel="stylesheet">
<script src="//" type="text/x-shellscript" rel="stylesheet">
<script src="//" type="text/x-shellscript" rel="stylesheet">
}

