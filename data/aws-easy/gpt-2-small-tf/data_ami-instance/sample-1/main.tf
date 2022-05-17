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
#        us-east-1 = "ami-a9d0c0d9b"
#        us-west-1 = "ami-6d2c7d9d"
#        us-west-2 = "ami-1e7f9d6b"
#        us-west-1 = "ami-6d2c7d9d"
#        us-west-2 = "ami-1e7f9d6b"
#        eu-west-1 = "ami-f0d0c0d9"
#        eu-central-1 = "ami-9d0c0d9b"
#        sa-east-1 = "ami-f0d0c0d9b"
#        ap-southeast-1 = "ami-f0d0c0d9b"
#        ap-southeast-2 = "ami-f0d0c0d9b"
#        ap-northeast-1 = "ami-f0d0c0d9b"
#        ap-northeast-2 = "ami-f0d0c0d9b"
#        ap-south-1 = "ami-f0d0c0d9b"
#        sa-east-1 = "ami-f0d0c0d9b"
#        ap-northeast-2 = "ami-f0d0c0d9b"
#        ap-south-1 = "ami-f0d0c0d9b"
#        ap-northeast-2 = "ami-f0d0c0d9b"
#        ap-west-1 = "ami-f0d0c0d9b"
#        ap-south-1 = "ami-f0d0c0d9b"
#        ap-northeast-2 = "ami-f0d0c0d9b"
#        sa-east-1 = "ami-f0d0c0d9b"
#        ap-northeast-2 = "ami-f0d0c0d9b"
#        ap-west-1 = "ami-f0d0c0d9b"
#        sa-east-2 = "ami-f0d0c0d9b"
#        ap-northeast-2
}

# Create AWS instance
}

