provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block with region us-east-1 region and default profile
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create S3 Bucket Resource. Set bucket to cookie-friendly name to avoid collisions with other resources
resource "aws_s3_bucket" "name_0" {
  bucket = "cookie-friendly-bucket"
  acl    = "private"

  tags = {
    Name = "cookie-friendly-bucket"
  }

  lifecycle {
    ignore_changes = [
      logging,
      metadata,
      metadata-editor,
      metadata-exporter,
      metadata-exporter-kubelet,
      metadata-exporter-tiller,
      metadata-exporter-kubelet-exporter,
      metadata-exporter-tiller-kubelet-exporter,
      metadata-exporter-tiller-kubelet-exporter,
      metadata-exporter-tiller-kubelet-exporter,
      metadata-exporter-tiller-kubelet-exporter,
      metadata-exporter-tiller-kubelet-exporter,
      metadata-exporter-tiller-kubelet-exporter,
      metadata-exporter-tiller-kubelet-exporter,
      metadata-exporter-tiller-kubelet-exporter,
      metadata-exporter-tiller-kubelet-exporter,
      metadata-exporter-tiller-kubelet-exporter,
      metadata-exporter-tiller-kubelet-exporter,
      metadata-exporter-tiller-kubelet-exporter,
      metadata-exporter-tiller-kubelet-exporter,
      metadata-exporter-tiller-kubelet-exporter,
      metadata-exporter-tiller-kubelet-exporter,
      metadata-exporter-tiller-kubelet-exporter,
      metadata-exporter-tiller-kubelet-exporter,
      metadata-exporter-tiller-kubelet-exporter,
      metadata-exporter-tiller-kubelet-exporter,
      metadata-exporter-tiller-kubelet-exporter,
      metadata-exporter-tiller-kubelet-exporter,
      metadata-exporter-tiller-kubelet-exporter,
      metadata-exporter-tiller-kubelet-exporter,
      metadata-exporter-tiller-kubelet-exporter,
      metadata-exporter-tiller-kubelet-exporter,
      metadata
}

# Resource, aws s3 bucket object. Set key to index.html and use the s3 bucket id
}

