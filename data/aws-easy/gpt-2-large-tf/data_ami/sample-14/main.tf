provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS block with AWS
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# data AMI ID blockresource "aws_instance" "ec2demo-nodes-ami" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}
