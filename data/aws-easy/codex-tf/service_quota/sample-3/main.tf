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
resource "aws_servicequotas_service_quota" "name_0" {
  service_code = "vpc"
  quota_code   = "L-F678F1CE"
  value        = 3
}

