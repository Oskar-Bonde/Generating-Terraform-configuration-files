provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS block with region set to us-east-1
provider "aws" {
  region  = "us-east-1"
}

# data block: Get latest AMI ID for Amazon Linux2 OSvariable "ami_id" {
  type        = "string"
  description = "AMI ID for the Amazon Linux2 OS"
}

# Create AWS instance with data ami id and t2.microvariable "ami_id"
# Create AWS instance with data ami-0ff8a91507f77f867
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

