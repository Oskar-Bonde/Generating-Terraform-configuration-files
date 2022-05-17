terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# AWS provider block in region us-east-1
provider "aws" {
  region = "us-east-1"
}

# Resource block to create a random pet name of length 5 with separator -
# and then use random suffix
resource "random_pet" "name_0" {
  length = 5
}

# Resource Block: Create AWS S3 Bucket with bucket set as random pet name

# Terraform configuration file
# Terraform block with the AWS provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

