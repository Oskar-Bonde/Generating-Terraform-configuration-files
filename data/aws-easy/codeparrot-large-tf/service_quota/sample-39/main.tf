terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider block with AWS
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# create a service quota resource
resource "aws_service_quota" "name_0" {
  provider = "aws.us-east-1"
  name     = "service-quota"
  service     = "service-${var.region}-${var.service_name}"
  region     = var.region
  value     = var.service_quota
  multi_ok    = var.service_quota == ""? true : false
}

