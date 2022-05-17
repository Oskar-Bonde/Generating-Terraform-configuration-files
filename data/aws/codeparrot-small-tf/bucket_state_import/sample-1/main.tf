terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block AWS with region us east
variable "name_0" {
  default = "us-east-1"
}

# Resource, create s3 bucket. Set bucket to state-import-bucket and force destroy false

# Terraform configuration file
# Terraform Block with the AWS provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

