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
  cidr_block = "10.0.0.0/16"
}

# Make a service discovery private dns namespace resource. Give it the name 'example.terraform.local' and use vpc id
# as the value for the 'vpc_id' field.
resource "aws_route53_record" "name_1" {
  zone_id = "${data.aws_route53_zone.selected.zone_id}"
  name    = "example.terraform.local"
  type    = "CNAME"
  ttl     = "300"
  records = ["${aws_vpc.name_0.cidr_block}"]
}

