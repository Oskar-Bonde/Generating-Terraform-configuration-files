terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider block
provider "aws" {
  region = "us-east-1"
}

# create AWS ELB resource
resource "aws_elb" "name_0" {
  name = "terraform-elb-%s"
  availability_zones = ["us-east-1a", "us-east-1b", "us-east-1c", "us-east-1d"]

  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

  tags {
    Name = "tf-elb-%s"
  }
}

