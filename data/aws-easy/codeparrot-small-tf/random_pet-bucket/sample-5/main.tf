terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
    }
  }
}

# AWS provider block
provider
aws {
  profile = "default"
  region  = "us-east-1"
}

# Resource block to create a random pet name 
resource
random_pet = "true"

# Terraform configuration file
# Terraform block with the AWS provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Create AWS S3 bucket 
resource
aws_s3_bucket" "terraform_state" {
  bucket = "terraform_state"
  acl    = "private"
}
