terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider block with AWS in us-east-1 region and profile set as default
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Provider block with AWS in us-west-1 region, profile set as default and alias aws-west-1
provider "aws" {
  alias  = "aws-west-1"
  profile = "default"
  region  = "us-west-1"
}

# Resource block to Create VPC called vpc-us-east-1 which uses private network 10.1.0.0/16
resource "aws_vpc" "name_0" {
  cidr_block = "10.1.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true

  tags {
    Name = "vpc-us-east-1"
  }
}

# Resource block to Create VPC called vpc-us-west-1 which uses private network 10.1.0.0/16 and the provider aws.aws-west-1
# provider "aws" {
#   alias  = "aws-west-1"
#   profile = "default"
#   region  = "us-west-1"
# }

# Resource block to Create VPC called vpc-us-west-1 which uses private network 10.1.0.0/16 and the provider aws.aws-west-1
# provider "aws" {
#   alias  = "aws-west-1"
#   profile = "default"
#   region  = "us-west-1"
# }

# Resource block to Create VPC called vpc-us-west-2 which uses private network 10.1.0.0/16 and the provider aws.aws-west-2
# provider "aws" {
#   alias  = "aws-west-2"
#   profile = "default"
#   region  = "us-west-2"
# }

# Resource block to Create VPC called vpc-us-west-3 which uses private network 10.1.0.0/16 and the provider aws.aws-west-3
# provider "aws" {
#   alias  = "aws-west-3"
#   profile = "default"
#   region  = "us-west-3"
# }

# Resource block to Create VPC called vpc-us-west-4 which uses private network 10.1.0.0/16 and the provider aws.aws-west-4
# provider "aws" {
#   alias  = "aws-west-4"
#   profile = "default"
#   region  = "us-west-4"
# }

# Resource block to Create VPC called vpc-us-west-5 which uses private network 10.1.0.0/16 and the provider aws.aws-west-5
# provider "aws" {
#   alias  = "aws-west-5"
#   profile = "default"
#   region  = "us-west-5"
# }

# Resource block to Create VPC called vpc-us-west-6 which uses private network 10.1.0.0/16 and the provider aws.aws-west-6
# provider "aws" {
#   alias  = "aws-west-6"
#   profile = "default"
#   region  = "us-west-6"
# }

# Resource block to Create VPC called vpc-us-west-7 which uses private
}

