terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider block with AWS
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# create a service quota resource
resource "aws_service_quota" "name_0" {
  provider = "aws.us-east-1"
  name     = "service-quota"
  project   = "service-project"
  ingress {
    from_port = 5000
    to_port   = 5000
    protocol  = "TCP"
    self      = true
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
