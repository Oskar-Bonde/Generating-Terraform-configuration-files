provider
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

# data AMI ID blockvariable "ami" {
#   type = "map"
#   default = {
#        us-east-1 = "ami-a9c9d9e"
#        us-west-1 = "ami-a9c9d9e"
#        eu-west-1 = "ami-a9c9d9e"
#        sa-east-1 = "ami-a9c9d9e"
#        us-west-1 = "ami-a9c9d9e"
#        us-west-2 = "ami-a9c9d9e"
#        us-west-3 = "ami-a9c9d9e"
#        us-east-1 = "ami-a9c9d9e"
#        eu-west-1 = "ami-a9c9d9e"
#        us-west-2 = "ami-a9c9d9e"
#        us-east-1 = "ami-a9c9d9e"
#        us-west-2 = "ami-a9c9d9e"
#        us-west-1 = "ami-a9c9d9e"
#        us-east-2 = "ami-a9c9d9e"
#        us-west-1 = "ami-a9c9d9e"
#        sa-east-1 = "ami-a9c9d9e"
#        us-west-2 = "ami-a9c9d9e"
#        us-west-1 = "ami-a9c9d9e"
#        us-east-1 = "ami-a9c9d9e"
#        us-west-2 = "ami-a9c9d9e"
#        us-west-1 = "ami-a9c9d9e"
#        us-east-2 = "ami-a9c9d9e"
#        us-west-1 = "ami-a9c9d9e"
#        us-east-1 = "ami-a9c9d9e"
#        us-west-2 = "ami-a9c9d9e"
#        us-east-1 = "ami-a9c9d9e"
#        us-west-1 = "ami-a9c
}

# Create AWS instance
}

