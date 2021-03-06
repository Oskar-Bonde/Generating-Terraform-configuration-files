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
#    type = "map"
#    default = {
#         us-east-1 = "ami-a9d7c9e4e9"
#         us-west-1 = "ami-b1d6c9e4e9"
#         us-west-2 = "ami-c0d7c9e4e9"
#         eu-west-1 = "ami-f1c7b6e4e9"
#         eu-central-1 = "ami-6b0d6c9e4e9"
#         sa-east-1 = "ami-a9d7c9e4e9"
#         ap-southeast-1 = "ami-6b0d6c9e4e9"
#         ap-southeast-2 = "ami-c0d7c9e4e9"
#         ap-northeast-1 = "ami-a9d7c9e4e9"
#         ap-northeast-2 = "ami-c0d7c9e4e9"
#         sa-east-1 = "ami-a9d7c9e4e9"
#         ap-south-1 = "ami-a9d7c9e4e9"
#         ap-southeast-2 = "ami-c0d7c9e4e9"
#         ap-southeast-3 = "ami-c0d7c9e4e9"
#         sa-east-2 = "ami-c0d7c9e4e9"
#         ap-northeast-1 = "ami-a9d7c9e4e9"
#         ap-northeast-2 = "ami-c0d7c9e4e9"
#         sa-east-1 = "ami-a9d7c9e4e9"
#         ap-south-1 = "ami-a9d7c9e4e9"
#         sa-east-2 = "ami-c0d7c9e4e9"
#         ap-northeast-1 = "ami-a9d7c9e4e9"
#         ap-southeast-2 = "ami-c0d7c9e4e9"
#         ap-southeast-
}

# Create AWS instance
}

