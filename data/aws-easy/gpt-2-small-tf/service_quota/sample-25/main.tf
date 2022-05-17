terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider block with AWS provider
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# create a service quota resource
resource "aws_service_quota" "name_0" {
  quota_size = "1"
  depends_on   = ["aws_instance.ec2demo"]
  depends_on = ["aws_instance.ec2demo-server"]
}

