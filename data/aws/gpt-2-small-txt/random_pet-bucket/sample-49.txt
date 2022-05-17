block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# AWS provider block in region us-east-1
provider "aws" {
  region  = "us-east-1"
}

# Resource block to create a random pet name of length 5 with separator -
# resource "random_pet" "random_name" {
#    name = "random_name"
# }
# Terraform configuration file
# Terraform block with AWS and random provider block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Resource Block: Create AWS S3 Bucket with bucket set as random pet name
}

