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
#        us-east-1 = "ami-b1d6c9b9"
#        us-west-1 = "ami-9e1c7f3b"
#        us-west-2 = "ami-c2d6c9b9"
#        eu-west-1 = "ami-f1d6c9b9"
#        eu-central-1 = "ami-f1d6c9b9"
#        sa-east-1 = "ami-f1d6c9b9"
#        ap-southeast-1 = "ami-f1d6c9b9"
#        ap-southeast-2 = "ami-f1d6c9b9"
#        ap-northeast-1 = "ami-f1d6c9b9"
#        ap-northeast-2 = "ami-f1d6c9b9"
#        sa-east-1 = "ami-f1d6c9b9"
#        ap-south-1 = "ami-f1d6c9b9"
#        ap-southeast-2 = "ami-f1d6c9b9"
#        ap-southeast-3 = "ami-f1d6c9b9"
#        sa-east-2 = "ami-f1d6c9b9"
#        ap-northeast-1 = "ami-f1d6c9b9"
#        ap-northeast-2 = "ami-f1d6c9b9"
#        sa-east-1 = "ami-f1d6c9b9"
#        ap-south-1 = "ami-f1d6c9b9"
#        sa-east-2 = "ami-f1d6c9b9"
#        ap-northeast-1 = "ami-f1d6c9b9"
#        ap-southeast-2 = "ami-f1d6c9b9"
#        ap-southeast-3 = "ami-f1d6c9b9"
#        sa-east-1 = "ami-f1d6c9b9"
#        ap-south-1 = "ami-f1d6c9b9"
#
}

