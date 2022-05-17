terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block: aws in us east 1 region
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# create a service quota resource. Use quota code "L-F678F1CE" and service code "vpc". Use value 75variable "service_quota_code"
# resource "aws_ebs_volume" "ec2demo-ebs-volume" {
  availability_zone = "${var.availability_zone}"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags {
    Name = "ec2demo-ebs-volume"
  }
}

