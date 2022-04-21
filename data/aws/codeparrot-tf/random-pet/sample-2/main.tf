terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# AWS provider block in region us-east-1 region and default profile
provider "aws" {
  region  = "us-east-1"
}

# Resource block to create a random pet name of length 5 with separator - this is the first element is the last element
resource "random_id" "name_0" {
  byte_length = 4
}

# Resource Block: Create AWS S3 Bucket with bucket set as random pet name
}

