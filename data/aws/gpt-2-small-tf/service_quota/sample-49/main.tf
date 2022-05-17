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

# create a service quota resource. Use quota code "L-F678F1CE" and service code "vpc". Use value 75% of the quota.
resource "aws_service_perc" "name_0" {
  name                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
}
