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

# create a service quota resource. Use quota code "L-F678F1CE" and service code "vpc". Use value 7500 for production
resource "aws_service_quota" "name_0" {
  provider = "aws.prod"
  name     = "service-quota"
  resource   = "service"
  ingress {
    # Allow access from vpc
    protocol    = "tcp"
    from_port   = 7500
    to_port     = 7500
    cidr_blocks = ["0.0.0.0/0"]
  }
  # Allow access from vpc
  protocol    = "tcp"
  from_port   = 7500
  to_port     = 7500
  cidr_blocks = ["10.0.0.0/16"]
  # Allow access from vpc
  protocol    = "tcp"
  from_port   = 7500
  to_port     = 7500
  cidr_blocks = ["10.0.0.0/16"]
  # Allow access from vpc
  protocol    = "tcp"
  from_port   = 7500
  to_port     = 7500
  cidr_blocks = ["10.0.0.0/16"]
  # Allow access from vpc
  protocol    = "tcp"
  from_port   = 7500
  to_port     = 7500
  cidr_blocks = ["10.0.0.0/16"]
  # Allow access from vpc
  protocol    = "tcp"
  from_port   = 7500
  to_port     = 7500
  cidr_blocks = ["10.0.0.0/16"]
  # Allow access from vpc
  protocol    = "tcp"
  from_port   = 7500
  to_port     = 7500
  cidr_blocks = ["10.0.0.0/16"]
  # Allow access from vpc
  protocol    = "tcp"
  from_port   = 7500
  to_port     = 7500
  cidr_blocks = ["10.0.0.0/16"]
  # Allow access from vpc
  protocol    = "tcp"
  from_port   = 7500
  to_port     = 7500
  cidr_blocks = ["10.0.0.0/16"]
  # Allow access from vpc
  protocol    = "tcp"
  from_port   = 7500
  to_port     = 7500
  cidr_blocks = ["10.0.0.0/16"]
  # Allow access from vpc
  protocol    = "tcp"
  from_port   = 7500
  to_port     = 7500
  cidr_blocks = ["10.0.0.0/16"]
  # Allow access from vpc
  protocol    = "tcp"
  from_port   = 7500
  to_port     = 7500
  cidr_blocks = ["10.0.0.0/16"]
  # Allow access from vpc
  protocol    = "tcp"
  from_port   = 7500
  to_port     = 7500
  cidr_blocks = ["10.0.0.0/16"]
  # Allow access from vpc
  protocol    = "tcp"
  from_port   = 7500
  to_port     = 7500
  cidr_blocks = ["10.0.0.0/16"]
  # Allow access from vpc
  protocol    = "tcp"
  from_port   = 7500
  to_port     = 7500
  cidr_blocks = ["10.0.0.0/16"]
  # Allow access from vpc
  protocol    = "tcp"
}

