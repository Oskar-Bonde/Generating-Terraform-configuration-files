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

# Resource block to create a random pet namevariable
resource "random_pet" "name_0" {
  count = 1
}

# Create AWS S3 bucket
}
