terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block: aws in us east 1 region and default profile
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create a VPC resource with cidr block 10.0.0.0/16. Enable DNS support and DNS hostnames
resource "aws_vpc" "name_0" {
  cidr_block = "${var.cidr_block}"
  enable_dns_support = true
  enable_dns_hostnames = true
}

# Make a service discovery private dns namespace resource. Give it the name 'example.terraform.local' and use vpc idvariable to make the service discovery private.
# This is necessary because Terraform can't accurately determine the correct public DNS name.
# Terraform will automatically create a record in the hosted zone with a name that already exists.
resource "aws_route53_zone" "name_1" {
  name = "example.terraform.local"
  comment = "Terraform example domain"
}

