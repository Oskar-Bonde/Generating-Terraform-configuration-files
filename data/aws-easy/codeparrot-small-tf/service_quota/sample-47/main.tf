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
  name = "service-quota"
  # resource_type = "service"
  # resource_id = "service-quota-${var.service_name}"
  # value = "1"
  # # resource_type = "service"
}

