provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block with AWS
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create S3 Bucket Resource for Module
resource "aws_s3_bucket" "name_0" {
  bucket = "modules.${var.project_name}"
  acl    = "private"

  tags {
    Name = "modules"
  }
}

# Create S3 Bucket object
resource "aws_s3_bucket_object" "name_1" {
  bucket  = aws_s3_bucket.name_0.id
  key     = "modules/${var.project_name}/index.html"
  content = <<EOF
<html>
<head>
  <title>${var.project_name} Index</title>
</head>
<body>
  <h1>Index of Modules</h1>
  <hr>
  <form action="/modules/index.html" method="post" target="/modules/index.html">
  <input type="text" name="index" value="index" />
  <hr>
  <input type="submit" value="Upload Module">
  </form>
</body>
EOF
}

