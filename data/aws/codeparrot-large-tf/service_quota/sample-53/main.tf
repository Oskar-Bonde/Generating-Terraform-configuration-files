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
  provider = "aws.foo"
  name = "service-quota"
  resource = "aws_service_quota"
  in_scope_access = "allow_all"
  # set this to true to enable the usage of the service
  # quota limiting.
  in_scope_access_policy = "true"
  # set this to true to enable the usage of the service
  # quota limiting.
  in_scope_access_policy_policy = "true"
  # set this to true to enable the usage of the service
  # quota limiting.
  ebs_block_device = "/dev/xvdb"
  # set this to true to enable the usage of the service
  # quota limiting.
  ebs_block_device_quota = "100"
  # set this to true to enable the usage of the service
  # quota limiting.
  ebs_block_device_quota_period = "100"
  # set this to true to enable the usage of the service
  # quota limiting.
  ebs_block_device_quota_period_period = "100"
  # set this to true to enable the usage of the service
  # quota limiting.
  ebs_block_device_quota_period_period_period_limit = "100"
}

