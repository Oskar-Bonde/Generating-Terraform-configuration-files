provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS block with AWS
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create EC2 Instanceresource block
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867"
  instance_type = "t2.micro"
}

# Output blockresource block
output "name_1" {
  value = <<-EOF
  aws_instance.name_0.id
  aws_instance.name_0.public_ip
  aws_instance.name_0.private_ip
  aws_instance.name_0.public_dns
  aws_instance.name_0.tags
EOF
}

