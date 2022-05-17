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

# data AMI ID blockvariable "ami" {
#   type = "map"
#   default = {
#        us-east-1 = "ami-f1c9c7f9e"
#        us-west-1 = "ami-f1c9c7f9e"
#        us-west-2 = "ami-f1c9c7f9e"
#        eu-west-1 = "ami-f1c9c7f9e"
#        eu-central-1 = "ami-f1c9c7f9e"
#        sa-east-1 = "ami-f1c9c7f9e"
#        ap-northeast-1 = "ami-f1c9c7f9e"
#        ap-southeast-1 = "ami-f1c9c7f9e"
#        ap-southeast-2 = "ami-f1c9c7f9e"
#        ap-northeast-3 = "ami-f1c9c7f9e"
#        ap-south-1 = "ami-f1c9c7f9e"
#        sa-east-1 = "ami-f1c9c7f9e"
#        ap-northeast-2 = "ami-f1c9c7f9e"
#        ap-southeast-3 = "ami-f1c9c7f9e"
#        ap-south-2 = "ami-f1c9c7f9e"
#        ap-northeast-3 = "ami-f1c9c7f9e"
#        ap-southeast-4 = "ami-f1c9c7f9e"
#        ap-northeast-4 = "ami-f1c9c7f9e"
#        sa-east-1 = "ami-f1c9c7f9e"
#        ap-southeast-2 = "ami-f1c9c7f9e"
#        ap-southeast-3 = "ami-f1c9c7f9e"
#        sa-east-2 = "ami-f1c9c7f9e"
#        ap-northeast-1 = "ami-f1c9c7f9e"
#        ap-northeast-2 = "ami-f1c9c7f9e"
# 
}

