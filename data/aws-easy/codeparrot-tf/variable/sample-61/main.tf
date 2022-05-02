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

# Create variable "aws_region" {
#   default = "us-east-1"
# }


output "name_0" {
  value       = var.project_id
  description = "The GCP project to use for integration tests"
}

