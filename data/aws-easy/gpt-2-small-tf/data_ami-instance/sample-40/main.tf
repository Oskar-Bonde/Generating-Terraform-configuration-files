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
#       us-east-1 = "ami-b0d9c7f9e"
#       us-west-1 = "ami-8d7f9e9e"
#       us-west-2 = "ami-c7b9f9e9e"
#       eu-west-1 = "ami-7d6b6b6b6"
#       eu-central-1 = "ami-6c7c7c7c7"
#       sa-east-1 = "ami-6c7c7c7c7"
#       us-west-1 = "ami-6c7c7c7c7"
#       us-west-2 = "ami-6c7c7c7c7"
#       ap-southeast-1 = "ami-a0d6d6d6"
#       ap-southeast-2 = "ami-a0d6d6d6"
#       ap-northeast-1 = "ami-a0d6d6d6"
#       ap-northeast-2 = "ami-a0d6d6d6"
#       sa-east-1 = "ami-a0d6d6d6"
#       ap-south-1 = "ami-a0d6d6d6"
#       ap-southeast-2 = "ami-a0d6d6d6"
#       ap-northeast-1 = "ami-a0d6d6d6"
#       sa-east-2 = "ami-a0d6d6d6"
#       ap-southeast-3 = "ami-a0d6d6d6"
#       ap-southeast-4 = "ami-a0d6d6d6"
#       ap-northeast-1 = "ami-a0d6d6d6"
#       ap-northeast-2 = "ami-a0d6d6d6"
#       sa-east-1 = "ami-a0d6d6d6"
#       ap-southeast-2 = "ami-a0d6d6d6"
#       ap-northeast-1 = "ami-a0d6d6d6"
#       sa-east-2 = "ami-a0d6d6d6"
#       ap-southeast-3 = "ami-a0d6
}

# Create AWS instance
}

