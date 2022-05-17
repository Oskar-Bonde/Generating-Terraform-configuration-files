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

# data AMI ID blockvariable "ami_id" {
#   type = "map"
#   default = {
#       us-east-1 = "ami-b0c3c0d6b"
#       us-west-1 = "ami-7c7b9d9f7"
#       us-west-2 = "ami-c2c3c0d6b"
#       us-west-1 = "ami-c2c3c0d6b"
#       eu-west-1 = "ami-9a5b0d6b"
#       eu-central-1 = "ami-9a5b0d6b"
#       sa-east-1 = "ami-9a5b0d6b"
#       us-west-1 = "ami-9a5b0d6b"
#       us-west-2 = "ami-9a5b0d6b"
#       ap-southeast-1 = "ami-9a5b0d6b"
#       ap-southeast-2 = "ami-9a5b0d6b"
#       ap-northeast-1 = "ami-9a5b0d6b"
#       ap-northeast-2 = "ami-9a5b0d6b"
#       ap-south-1 = "ami-9a5b0d6b"
#       sa-east-1 = "ami-9a5b0d6b"
#       ap-southeast-2 = "ami-9a5b0d6b"
#       ap-south-1 = "ami-9a5b0d6b"
#       ap-northeast-1 = "ami-9a5b0d6b"
#       ap-southeast-2 = "ami-9a5b0d6b"
#       sa-east-1 = "ami-9a5b0d6b"
#       ap-southeast-2 = "ami-9a5b0d6b"
#       ap-northeast-1 = "ami-9a5b0d6b"
#       ap-south-1 = "ami-9a5b0d6b"
#       sa-east-1 = "ami-9a5b0d6b"
#       ap-northeast-1 = "ami-9a5b0d6b"
#       ap-southeast-2 = "ami-9a5b0d6b
}

# Create AWS instance
}

