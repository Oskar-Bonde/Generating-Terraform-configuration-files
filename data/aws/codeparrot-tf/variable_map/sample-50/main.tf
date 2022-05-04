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

# Create Variable that is a map of strings. The default is that key Terraform maps to true and Environment key maps to dev, Test environment key maps to prod.
variable "name_1" {
  description = "Map of regions to AWS region"
  default     = {
    eu-west-1      = "ami-0ff8a91507f77f867"
    eu-central-1   = "ami-0ff8a91507f77f867"
    eu-west-2      = "ami-0ff8a91507f77f867"
    sa-east-1      = "ami-0ecae7c7c"
    ap-southeast-1 = "ami-0ecae7c7c"
    ap-southeast-2 = "ami-0ecae7c7c"
    ap-northeast-1 = "ami-0ecae7c7c"
    ap-northeast-2 = "ami-0ecae7c7c"
    sa-east-1      = "ami-0ecae7c7c"
    us-east-1      = "ami-0ecae7c7c"
    us-east-2      = "ami-0ecae7c7c"
    us-gov-west-1  = "ami-0ecae7c7c"
    us-west-1      = "ami-0ecae7c7c"
    us-west-2      = "ami-0ecae7c7c"
    us-gov-west-3  = "ami-0ecae7c7c"
    us-west-3      = "ami-0ecae7c7c"
    us-west-4      = "ami-0ecae7c7c"
    sa-east-1      = "ami-0ecae7c7c"
    ap-southeast-1 = "ami-0ecae7c7c"
    ap-southeast-2 = "ami-0ecae7c7c"
    ap-northeast-1 = "ami-0ecae7c7c"
    ap-northeast-2 = "ami-0ecae7c7c"
    sa-east-1      = "ami-0ecae7c7c"
    us-gov-west-1  = "ami-0ecae7c7c"
    us-west-1      = "ami-0ecae7c7c"
    us-west-2      = "ami-0ecae7c7c"
    us-gov-west-3  = "ami-0ecae7c7c"
    us-west-3      = "ami-0ecae7c7c"
    us-west-4      = "ami-0ecae7c7c"
    sa-east-1      = "ami-0ecae7c7c"
    ap-southeast-1 = "ami-0ecae7c7c"
    ap-southeast-2 = "ami-0ecae7c7c"
    ap-northeast-1 = "ami-0ecae7c7c"
    ap-northeast-2 = "ami-0ecae7c7
}
