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

# Create S3 Bucket Resource. Set bucket to cookie
resource "aws_s3_bucket" "name_0" {
  bucket = "cookie"
}

# Resource, aws s3 bucket object. Set key to index.html and use the s3 bucket id
resource "aws_s3_bucket_object" "name_1" {
  key = "index.html"
  bucket = aws_s3_bucket.name_0.id
  content = <<EOF
<html>
<head>
<title>Welcome to the Cookie Factory</title>
</head>
<body>
<h1>Welcome to the Cookie Factory</h1>
<p>We are the best cookie factory in the world!</p>
</body>
</html>
EOF
}

