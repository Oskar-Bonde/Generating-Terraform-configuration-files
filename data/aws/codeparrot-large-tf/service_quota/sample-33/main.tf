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
  provider = "aws.eu-central-1"
  name = "service-quota"
  resource = "service-quota"
  in_scope_access = "allow"
  # is the service in the restricted environment?
  # can be one of: default, private, public-read, and privileged
  # (default: private)
  # (private: public-read)
  # (public-read)
  # (privileged: privileged)
  # (default: privileged)
}

