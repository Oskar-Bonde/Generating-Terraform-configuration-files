terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider block with AWS
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create variable "name_0" with value "ami-0ff8a91507f77f867"
variable "name_0" {
  type = "map"
  default = {
    ap-northeast-1 = "ami-0ff8a91507f77f867"
    ap-southeast-1 = "ami-0ff8a91507f77f867"
    ap-southeast-2 = "ami-0ff8a91507f77f867"
    eu-central-1 = "ami-0ff8a91507f77f867"
    eu-west-1 = "ami-0ff8a91507f77f867"
    sa-east-1 = "ami-0ff8a91507f77f867"
    us-east-1 = "ami-0ff8a91507f77f867"
    us-west-1 = "ami-0ff8a91507f77f867"
    us-west-2 = "ami-0ff8a91507f77f867"
    us-gov-west-1 = "ami-0ff8a91507f77f867"
    us-gov-west-2 = "ami-0ff8a91507f77f867"
    us-west-1 = "ami-0ff8a91507f77f867"
    cn-north-1 = "ami-0ff8a91507f77f867"
    cn-southeast-1 = "ami-0ff8a91507f77f867"
    cn-southeast-2 = "ami-0ff8a91507f77f867"
    ap-northeast-1 = "ami-0ff8a91507f77f867"
    ap-southeast-1 = "ami-0ff8a91507f77f867"
    ap-southeast-2 = "ami-0ff8a91507f77f867"
    eu-central-1 = "ami-0ff8a91507f77f867"
    eu-west-1 = "ami-0ff8a91507f77f867"
    sa-east-1 = "ami-0ff8a91507f77f867"
    us-east-1 = "ami-0ff8a91507f77f867"
    us-west-1 = "ami-0ff8a91507f77f867"
    us-west-2 = "ami-0ff8a91507f77f867"
    us-gov-west-1 = "ami-0ff8a91507f77f867"
    us-gov-west-2 = "ami-0ff8a91507f77f867"
    us-west-1 = "ami-0ff8a91507f77f867"
    cn-north-1 = "ami-0ff8a91507f77f867"
    cn-southeast-1 = "ami-0ff8a91507f77f867"
    cn-southeast-2 = "ami-0ff8a91507f77f867"
    ap-northeast-1 = "ami-0ff8a91507f77f867"
    ap-southeast-1 = "ami-0ff8a91507f77f867"
    ap-southeast-2 = "ami-0ff8a91507f77f867"
    eu-central-1 = "ami-0ff8a91507f77f867"
    eu-west-1 = "ami-0ff8a91507f77f867"
    sa-
}
