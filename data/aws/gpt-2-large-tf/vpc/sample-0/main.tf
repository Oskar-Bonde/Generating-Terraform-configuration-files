terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# AWS provider block in region us-east-1 region and default profile
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Resource block with an amazon VPC in private network 10.0.0.0/16 and private network 10.0.0.0/24 and private network 10.0.0.0/24-iap and private network 10.0.0.0/24-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-iap-i
}

