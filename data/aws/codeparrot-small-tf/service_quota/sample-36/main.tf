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

# create a service quota resource. Use quota code "L-F678F1CE" and service code "vpc". Use value 75 for production
resource "aws_service_quota" "name_0" {
  service_name = "service-quota"
  resource_type = "service"
  #value = "75"
  #value_type = "gigabytes"
  value = "75"
}
