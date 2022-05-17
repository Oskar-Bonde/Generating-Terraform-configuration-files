terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# AWS provider block in region us-east-1variable-aws-region-us-east-1
# Terraform block with AWS and random provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Resource block to create a random pet name of length 5 with separator -1
resource "random_pet" "name_0" {
  length = 5
}

# Resource Block: Create AWS S3 Bucket with bucket set as random pet name
}

