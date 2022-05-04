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
resource "aws_quota_resource" "name_0" {
  name = "service"
  #quota_class = "1"
  #resource_class = "t2.micro"
  #depends_on = ["aws_instance.ec2demo"]
}
