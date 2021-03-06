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
resource "aws_quota_resource" "name_0" {
  name = "service"
  # resource_id = "service-quota-resource"
  # resource_type = "service"
  # resource_usage = "service-quota-usage"
  # resource_type = "service"
  # resource_limits = {
  #   "service-quota-resource" = "service-quota-resource"
  # }
}

