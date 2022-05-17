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
resource "aws_ebs_volume" "name_0" {
  availability_zone = "${data.aws_availability_zones.available.names[0]}"
  size             = 20
  type             = "gp2"
  encrypted        = false

  tags {
    Name = "ec2demo-ebs-${data.aws_availability_zones.available.names[1]}"
  }
}

