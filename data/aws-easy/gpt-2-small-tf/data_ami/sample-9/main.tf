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
#        us-east-1 = "ami-b0d6c7f9b"
#        us-west-1 = "ami-6b9c7f9b"
#        us-west-2 = "ami-f3d0f9d9b"
#        eu-west-1 = "ami-f3d0f9d9b"
#        eu-central-1 = "ami-f3d0f9d9b"
#        sa-east-1 = "ami-f3d0f9d9b"
#        ap-southeast-1 = "ami-f3d0f9d9b"
#        ap-southeast-2 = "ami-f3d0f9d9b"
#        ap-northeast-1 = "ami-f3d0f9d9b"
#        ap-northeast-2 = "ami-f3d0f9d9b"
#        ap-south-1 = "ami-f3d0f9d9b"
#        sa-east-1 = "ami-f3d0f9d9b"
#        ap-northeast-2 = "ami-f3d0f9d9b"
#        ap-southeast-1 = "ami-f3d0f9d9b"
#        ap-southeast-2 = "ami-f3d0f9d9b"
#        sa-east-1 = "ami-f3d0f9d9b"
#        ap-northeast-1 = "ami-f3d0f9d9b"
#        ap-northeast-2 = "ami-f3d0f9d9b"
#        sa-east-1 = "ami-f3d0f9d9b"
#        ap-south-1 = "ami-f3d0f9d9b"
#        ap-southeast-1 = "ami-f3d0f9d9b"
#        ap-northeast-1 = "ami-f3d0f9d9b"
#        sa-east-1 = "ami-f3d0f9d9b"
#        ap-southeast-2 = "ami-f3d0f9d9b"
#  
}

