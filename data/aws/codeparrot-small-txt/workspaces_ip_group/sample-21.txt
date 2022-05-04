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
# and description AWS_IAM_ID.
module "workspace_ip_group" {
  source = "github.com/terraform-community-modules/tf_aws_ip_group"
  name = "terraform-example"
  description = "Terraform example group"
  vpc_id = module.vpc.vpc_id
}

