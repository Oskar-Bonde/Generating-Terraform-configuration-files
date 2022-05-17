terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider block with AWS provider
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# create a service quota resourcevariable "service_quota" {
  type        = number
  description = "The number of instances in the cluster"
}

