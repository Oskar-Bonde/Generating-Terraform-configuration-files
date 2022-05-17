provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS block with an EC2 instance
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# data AMI ID blockvariable "ami_id" {
#   type = "map"
#   default = {
#        us-east-1 = "ami-b1cf9b9e"
#        us-west-1 = "ami-d1c3c7f6"
#        us-west-2 = "ami-f1d2d7f6"
#        eu-west-1 = "ami-f1d2d7f6"
#        eu-central-1 = "ami-f1d2d7f6"
#        sa-east-1 = "ami-f1d2d7f6"
#        ap-southeast-1 = "ami-f1d2d7f6"
#        ap-southeast-2 = "ami-f1d2d7f6"
#        ap-northeast-1 = "ami-f1d2d7f6"
#        ap-southeast-2 = "ami-f1d2d7f6"
#        ap-northeast-2 = "ami-f1d2d7f6"
#        sa-east-1 = "ami-f1d2d7f6"
#        ap-northeast-2 = "ami-f1d2d7f6"
#        ap-south-1 = "ami-f1d2d7f6"
#        ap-southeast-1 = "ami-f1d2d7f6"
#        ap-southeast-2 = "ami-f1d2d7f6"
#        sa-east-1 = "ami-f1d2d7f6"
#        ap-northeast-1 = "ami-f1d2d7f6"
#        ap-southeast-2 = "ami-f1d2d7f6"
#        sa-east-1 = "ami-f1d2d7f6"
#        ap-south-1 = "ami-f1d2d7f6"
#        sa-east-2 = "ami-f1d2d7f6"
#        ap-northeast-1 = "ami-f1d2d7f6"
#        ap-southeast-2 = "ami-f1d2d7f6"
#        ap-south-1 = "ami-f1d2d7f6"
#
}

