provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS region var.name_0
variable "name_0" {
  description = "AWS region to launch servers."
  default     = "us-east-1"
}

# Create Variable that is a map of strings. The default is that key Terraform maps to true and Environment key maps to dev
variable "name_1" {
  description = "AWS region to launch servers."
  default     = {
    us-east-1      = "ami-0ff8a91507f77f867"
    us-west-1      = "ami-0ff8a91507f77f867"
    us-west-2      = "ami-0ff8a91507f77f867"
    eu-west-1      = "ami-0ff8a91507f77f867"
    eu-central-1   = "ami-0ff8a91507f77f867"
    ap-southeast-1 = "ami-0ff8a91507f77f867"
    ap-southeast-2 = "ami-0ff8a91507f77f867"
    ap-northeast-1 = "ami-0ff8a91507f77f867"
    ap-northeast-2 = "ami-0ff8a91507f77f867"
    sa-east-1      = "ami-0ff8a91507f77f867"
    us-east-1      = "ami-0ff8a91507f77f867"
    us-west-1      = "ami-0ff8a91507f77f867"
    us-west-2      = "ami-0ff8a91507f77f867"
    us-gov-west-1  = "ami-0ff8a91507f77f867"
    us-gov-west-2  = "ami-0ff8a91507f77f867"
    us-west-1      = "ami-0ff8a91507f77f867"
    cn-north-1      = "ami-0ff8a91507f77f867"
    ap-southeast-1 = "ami-0ff8a91507f77f867"
    ap-southeast-2 = "ami-0ff8a91507f77f867"
    ap-northeast-1 = "ami-0ff8a91507f77f867"
    ap-northeast-2 = "ami-0ff8a91507f77f867"
    sa-east-1      = "ami-0ff8a91507f77f867"
    us-east-1      = "ami-0ff8a91507f77f867"
    us-west-1      = "ami-0ff8a91507f77f867"
    us-west-2      = "ami-0ff8a91507f77f867"
    us-gov-west-1  = "ami-0ff8a91507f77f867"
    us-gov-west-2  = "ami-0ff8a91507f77f867"
    us-west-1      = "ami-0ff8a91507f77f867"
    cn-north-1      = "ami-0ff8a91507f77f867"
    ap-southeast-1 = "ami-0ff8a91507f77f867"
    ap-southeast-2 = "ami-0ff8a91507f77f867"
    ap-northeast-1 = "ami-
}

