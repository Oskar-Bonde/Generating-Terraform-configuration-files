provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS block with region us east and default profile
provider "aws" {
  alias  = "east"
  region = "us-east-1"
}

# Create EC2 Instance with ami-0ff8a91507f77f867 and t2.micro instance
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# output block, get EC2 Instance Public IP from vm-0ff8a91507f77f867
# This is a block of instance tags, with a key, value pairs, and a list of instance tags
#
# The block form of the following form:
#
#   {
#     "key" = "value"
#     "value" = "value"
#     "propagate_at_launch"
#   }
#
#   tags = {
#     "Name" = "ec2demo"
#     "VMName" = "ec2demo"
#     "Owner" = "ec2demo"
#   "foo/bar" = "fib+baz"
#   }
# }
#
#   user_data = <<EOF
#cloud-config

#  - aws_region=us-east-1
#  - aws_profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws-profile=aws
}

