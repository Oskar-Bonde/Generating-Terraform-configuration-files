terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block: aws in us east 1 region and default profile
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# create a service quota resource. Use quota code "L-F678F1CE" and service code "vpc". Use value 7500 for production
resource "aws_service_quota" "name_0" {
  provider = "aws.us-east-1"
  name     = "service-quota"
  resource   = "service"
  ingress {
    # set the usage for the service
    limit = "1"
    # set the limit for the service
    value = "7500"
  }
  # set the usage for the service
  limit = "1"
  # set the usage for the service
  value = "vpc"
}
