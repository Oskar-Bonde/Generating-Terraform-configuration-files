provider
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

# data AMI ID block
data "aws_ami" "name_0" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-*"]
  }

  owners = ["099720109477"] # Canonical
}

# Create AWS instancevariable
resource "aws_instance_variable" "name_1" {
  instance_name = "terraform-instance-var-${var.env}"
  description = "A terraform-managed variable for the ${var.env} environment"
  type = "String"
  default = "terraform-instance-var-${var.env}"
}

