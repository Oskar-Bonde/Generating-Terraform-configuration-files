one
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider block AWS and timezone
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Resource block with an EC2 instancevariable "ec2demo_region" {
  type        = "string"
  description = "Region for EC2 Demo"
}

# Time sleep resource blockvariable "time_sleep" {
  type        = "string"
  description = "Sleep duration in seconds"
  default     = "10"
}

