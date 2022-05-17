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
#    type = "map"
#    default = {
#         us-east-1 = "ami-f9d6b9e8e"
#         us-west-1 = "ami-9d6b9e8e8e"
#         us-west-2 = "ami-f9d6b9e8e8e"
#         eu-west-1 = "ami-f9d6b9e8e8e"
#         sa-east-1 = "ami-f9d6b9e8e8e"
#         ap-northeast-1 = "ami-f9d6b9e8e8e"
#         ap-southeast-1 = "ami-f9d6b9e8e8e"
#         ap-southeast-2 = "ami-f9d6b9e8e8e"
#         eu-central-1 = "ami-f9d6b9e8e8e"
#         sa-east-1 = "ami-f9d6b9e8e8e"
#         ap-northeast-2 = "ami-f9d6b9e8e8e"
#         ap-southeast-3 = "ami-f9d6b9e8e8e"
#         ap-northeast-4 = "ami-f9d6b9e8e8e"
#         ap-south-1 = "ami-f9d6b9e8e8e"
#         ap-south-2 = "ami-f9d6b9e8e8e"
#         ap-west-1 = "ami-f9d6b9e8e8e"
#         sa-east-1 = "ami-f9d6b9e8e8e"
#         ap-southeast-1 = "ami-f9d6b9e8e8e"
#         ap-southeast-2 = "ami-f9d6b9e8e8e"
#         eu-central-1 = "ami-f9d6b9e8e8e"
#         ap-northeast-1 = "ami-f9d6b9e8e8e"
#         ap-southeast-2 = "ami-f9d6b9e8e8e
}

