terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS in region "us-east-1"
provider "aws" {
  region = "us-east-1"
}

# create workspace ip group, give it a name. Set a rule with source 150.24.14.0/24 and description LA
# https://cloud.google.com/anthos/clusters/docs/multi-cloud/aws/how-to/create-aws-iam-groups
resource "aws_iam_group" "name_0" {
  name = "terraform-example-terraform-example-group"
  path = "/"
  description = "Terraform example group"
  tags = {
    Name = "terraform-example-terraform-example-group"
  }
}

