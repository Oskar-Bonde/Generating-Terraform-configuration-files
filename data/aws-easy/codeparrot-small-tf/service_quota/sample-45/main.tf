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
  # resource_class = "service_quota_class"
  # resource_limits {
  #   resource_class = "service_quota_class_1"
  #   resource_limits {
  #     resource_class = "service_quota_class_2"
  #   }
  # }
}

