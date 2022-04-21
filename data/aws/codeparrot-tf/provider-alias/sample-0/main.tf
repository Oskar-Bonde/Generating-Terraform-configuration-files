1.0.0-0-0-0--0"

# Terraform configuration file
# terraform block with the AWS provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Terraform Block with the AWS provider/region/zone/id/name/availability-zone/id/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/availability-zone-1/
}

# Provider block with AWS in us-east-1 region and profile set as default/
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Provider block with AWS in us-west-1 region, profile set as default and alias aws-west-1/region
provider "aws" {
  alias  = "west-1"
  region = "us-west-
}

# Resource block to Create VPC called vpc-us-east-1 which uses private network 10.1.0.0/16
}

# Resource block to Create VPC called vpc-us-west-1 which uses private network 10.1.0.0/16 and the provider aws.aws-west-1
}

