terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# AWS provider block in us east 1 region
provider "aws" {
  region  = "us-east-1"
}

# Create AWS IAM user resource for each TJack, TJames, TMadhu and TDaveresource
resource "aws_iam_user" "name_0" {
  name                = "tj_user"
  path                = "/"
  description         = "TJ user"
  force_destroy        = true
  user_data           = "${data.template_file.user_data.rendered}"
}

