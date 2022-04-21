# Terraform Block with AWS provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block: aws in us east 1 
provider "aws" {
  region  = "us-east-1"
}

# create a service quota resource. Use quota code "L-F678F1CE" and service code "vpc". Use value 75
resource "aws_servicequotas_service_quota" "name_0" {
    quota_code   = "L-F678F1CE"
    service_code = "vpc"
    value        = 75
  }