# Terraform Block with the AWS provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider block
provider "aws" {
  region  = "us-east-1"
}

# create AWS ELB resource
resource "aws_elb" "name_0" {
  
    listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

}
