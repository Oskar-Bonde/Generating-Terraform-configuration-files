provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# AWS provider block with variable region and default profile
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# varaible called ec2_ami_id with default ami-0915bcb5fa77e4892 and a condition to make sure string is an AMI id
# variable "ami_id" {
#    description = "AMI id"
#    default = "ami-0915bcb5fa77e4892"
# }

# varaible called aws_ami_id with default ami-0ff8a91507f77f867 and a condition to make sure string is an AMI id
# variable "ami_id" {
#    description = "AMI id"
#    default = "ami-0ff8a91507f77f867"
# }

# varaible called aws_ami_id with default ami-0ff8a91507f77f867 and a condition to make sure string is an AMI id
# variable "ami_id" {
#    description = "AMI id"
#    default = "ami-0ff8a91507f77f867"
# }

# varaible called aws_ami_id with default ami-0ff8a91507f77f867 and a condition to make sure string is an AMI id
# variable "ami_id" {
#    description = "AMI id"
#    default = "ami-0ff8a91507f77f867"
# }

# varaible called aws_ami_id with default ami-0ff8a91507f77f867 and a condition to make sure string is an AMI id
# variable "ami_id" {
#    description = "AMI id"
#    default = "ami-0ff8a91507f77f867"
# }

# varaible called aws_ami_id with default ami-0ff8a91507f77f867 and a condition to make sure string is an AMI id
# variable "ami_id" {
#    description = "AMI id"
#    default = "ami-0ff8a91507f77f867"
# }

# varaible called aws_ami_id with default ami-0ff8a91507f77f867 and a condition to make sure string is an AMI id
# variable "ami_id" {
#    description = "AMI id"
#    default = "ami-0ff8a91507f77f867"
# }

# varaible called aws_ami_id with default ami-0ff8a91507f77f867 and a condition to make sure string is an AMI id
# variable "ami_id" {
#    description = "AMI id"
#    default = "ami-0ff8a91507f77f867"
# }

# varaible called aws_ami_id with default ami-0ff8a91507f77f867 and a condition to make
}

