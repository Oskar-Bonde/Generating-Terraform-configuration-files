terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# AWS provider block in region us-east-1variable-aws-region
# AWS provider block with AWS in us-east-1 region and default profile
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Resource block to create a random pet name of length 5 with separator -variable-aws-region
resource "random_pet" "name_0" {
  length  = 5
  separator = "-"
}

# Resource Block: Create AWS S3 Bucket with bucket set as random pet name
}

