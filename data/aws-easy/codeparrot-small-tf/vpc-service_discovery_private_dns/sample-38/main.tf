terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block with AWS
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create a VPC resourceresource block
resource "aws_vpc" "name_0" {
  cidr_block = "10.0.0.0/16"
}

# Make a service discovery private dns namespace resource
resource "aws_route53_record" "name_1" {
  zone_id = "${data.aws_route53_zone.selected.zone_id}"
  name    = "example.com"
  type    = "CNAME"
  ttl     = "300"
  records = ["${aws_instance.ec2demo.private_dns}"]
}

