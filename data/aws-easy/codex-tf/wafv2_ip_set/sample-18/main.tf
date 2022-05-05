terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS
provider "aws" {
  region = var.region
}

# create wafv2 ip set
resource "aws_wafv2_ip_set" "name_0" {
  name        = var.wafv2_ip_set_name
  scope       = var.wafv2_ip_set_scope
  description = var.wafv2_ip_set_description
}

