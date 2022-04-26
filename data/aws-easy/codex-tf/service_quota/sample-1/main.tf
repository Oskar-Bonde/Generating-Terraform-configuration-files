terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider block
provider "aws" {
  region = "us-east-1"
}

# create a service quota resource
resource "aws_servicequota" "name_0" {
  quota_code = "L-F678F1CE"
  service_code = "vpc"
  value = "5"
}

