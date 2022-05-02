terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider block
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# create a service quota resource
resource "aws_service_quota" "name_0" {
  service = "ec2demo"
  # resource = "aws_instance.ec2demo"
  # resource_type = "t2.micro"
  # resource_usage = "100"
  # quota_class = "1"
  # depends_on = [aws_instance.ec2demo]
}

