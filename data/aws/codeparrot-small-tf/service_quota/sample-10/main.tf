terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block: aws in us east 1
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# create a service quota resource. Use quota code "L-F678F1CE" and service code "vpc". Use value 75
resource "aws_service_quota" "name_0" {
  service_name = "service-quota"
  #value = "75"
  #value_type = "service"
  #value_unit = "1"
  #value_volume = "10"
  #value_volume_size = "50"
  #value_volume_type = "gp2"
  #value_volume_provisioned = true
  #value_locked = true
  #value_locked_greater_than_or_equal_to = "10"
  #value_locked_less_than = "10"
  #value_locked_less_than_or_equal_to = "10"
  #value_locked_several_than = "10"
  #value_locked_than_or_equal_to = "10"
  #value_locked_than_or_equal_to = "10"
  #value_locked_than_or_equal_to = "10"
  #value_locked_than_or_equal_to = "10"
  #value_locked_than_or_equal_to = "10"
  #value_locked_than_or_equal_to = "10"
  #value_locked_than_or_equal_to = "10"
  #value_locked_than_or_equal_to = "10"
  #value_locked_than_or_equal_to = "10"
  #value_locked_than_or_equal_to = "10"
  #value_locked_than_or_equal_to = "10"
  #value_locked_than_or_equal_to = "10"
  #value_locked_than_or_equal_to = "10"
  #value_locked_than_or_equal_to = "10"
  #value_locked_than_or_equal_to = "10"
  #value_locked_than_or_equal_to = "10"
  #value_locked_than_or_equal_to = "10"
  #value_locked_than_or_equal_to = "10"
  #value_locked_than_or_equal_to = "10"
  #value_locked_than_or_equal_to = "10"
  #value_locked_than_or_equal_to = "10"
  #value_locked_than_or_equal_to = "10"
  #value_locked_than_or_equal_to = "10"
  #value_locked_than_or_equal_to = "10"
  #value_locked_than_or_equal_to = "10"
  #value_locked_than_or_equal_to = "10"
  #value_locked_than_or_equal_to = "10"
  #value_locked_than_or_equal_to = "10"
  #value_locked_than_or_equal_to = "10"
  #value_locked_than_or_equal_to = "10"
  #value_locked_than_or_equal_to = "10"
  #value_locked_than_or_equal_to = "10"
  #value_locked_than_or_equal_to = "10"
  #value_locked_than_or_equal_to =
}

