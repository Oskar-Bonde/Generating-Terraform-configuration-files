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

# create a service quota resource. Use quota code "L-F678F1CE" and service code "vpc". Use value 75 to use the default value.
resource "aws_service_quota" "name_0" {
  service_name = "service-quota"
  #value = "75"
  #value_type = "percent"
  #value_percent = 75
  #value_fixed = 75
}

