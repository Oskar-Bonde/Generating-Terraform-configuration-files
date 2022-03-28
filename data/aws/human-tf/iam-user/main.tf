terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# AWS provider block in us east 1
provider "aws" {
  region  = "us-east-1"
  profile = "default"
}

# Create AWS IAM user resource for each TJack, TJames, TMadhu and TDave
resource "aws_iam_user" "name_0" {
  for_each = toset(["TJack", "TJames", "TMadhu", "TDave"])
  name     = each.key
}
