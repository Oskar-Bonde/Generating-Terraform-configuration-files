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
    # The following parameters control the size of the resource.
    # See https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/quota-configuration.html#quota-configuration-parameters
    maximum_size = 7500
    minimum_size = 7500
  }
  # Use the quota code "L-F678F1CE" for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
  # Use value 7500 for production
    # Use value 7500
}

