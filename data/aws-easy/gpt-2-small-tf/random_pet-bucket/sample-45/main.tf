terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# AWS provider block
# Terraform block with AWS and random provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Resource block to create a random pet name
resource "random_pet" "name_0" {
  length  = 8
  prefix  = "random"
  keepers = {
    "0" = "0"
  }
}

# Create AWS S3 bucket
}

