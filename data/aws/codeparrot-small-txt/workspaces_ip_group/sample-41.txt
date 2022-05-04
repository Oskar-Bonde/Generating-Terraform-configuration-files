terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS in region "us-east-1"
provider "aws" {
  region = "us-east-1"
}

# create workspace ip group, give it a name. Set a rule with source 150.24.14.0/24 and description LAUNCH_IP_GROUP_NAME
# and description AWS_WORKSPACE_IP_GROUP_NAME
provider "aws" {
  # use default security group if not specified
  # use aws CLI to find your account in region
  # use aws CLI to find your account in region
  # use aws CLI to find your account in region
  # use aws CLI to find your account in region
}

