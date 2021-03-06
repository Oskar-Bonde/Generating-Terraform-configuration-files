terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS block with region set to us-east-1 and default profile
# terraform {
#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#     }
#   }
# }

# Resource block with AMI-0ff8a91507f77f867
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867"
  instance_type = "t2.micro"
}

# data block: Get latest AMI ID for Amazon Linux2 OS

}

