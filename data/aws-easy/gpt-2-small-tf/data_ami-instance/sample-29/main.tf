provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider block with an EC2 instance
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# data AMI ID blockvariable "ami" {
#   type = "map"
#   default = {
#       us-east-1 = "ami-f1c0d6b9"
#       us-west-1 = "ami-f1c0d6b9"
#       us-west-2 = "ami-f1c0d6b9"
#       eu-west-1 = "ami-f1c0d6b9"
#       eu-central-1 = "ami-f1c0d6b9"
#       sa-east-1 = "ami-f1c0d6b9"
#       ap-southeast-1 = "ami-f1c0d6b9"
#       ap-southeast-2 = "ami-f1c0d6b9"
#       ap-northeast-1 = "ami-f1c0d6b9"
#       ap-southeast-2 = "ami-f1c0d6b9"
#       ap-northeast-2 = "ami-f1c0d6b9"
#       us-east-1 = "ami-f1c0d6b9"
#       us-west-1 = "ami-f1c0d6b9"
#       us-west-2 = "ami-f1c0d6b9"
#       ap-northeast-1 = "ami-f1c0d6b9"
#       ap-southeast-1 = "ami-f1c0d6b9"
#       ap-northeast-2 = "ami-f1c0d6b9"
#       us-east-1 = "ami-f1c0d6b9"
#       us-west-1 = "ami-f1c0d6b9"
#       sa-east-1 = "ami-f1c0d6b9"
#       ap-southeast-1 = "ami-f1c0d6b9"
#       ap-southeast-2 = "ami-f1c0d6b9"
#       ap-northeast-1 = "ami-f1c0d6b9"
#       ap-northeast-2 = "ami-f1c0d6b9"
#       us-east-1 = "ami-f1c0d6b9"
#       us-west-1 = "ami-f1c0d6b9"
# 
}

# Create AWS instance
}

