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
resource "aws_service_quota" "name_0" {
  provider = aws.aws[0].name
  name     = "service_quota"
  resource   = "service_quota"
  limit     = 1
}

