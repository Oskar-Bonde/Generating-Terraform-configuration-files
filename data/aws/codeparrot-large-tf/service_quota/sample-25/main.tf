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
  name     = "service-quota"
  value     = 7500
  zone_id   = aws_route53_zone.private-zone.zone_id
  records = ["${aws_eip.service-quota.public_ip}"]
}

