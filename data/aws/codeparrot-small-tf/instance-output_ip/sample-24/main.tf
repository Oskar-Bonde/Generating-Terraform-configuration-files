terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS block with region us east and default profile
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Create EC2 Instance with ami-0ff8a91507f77f867 and t2.micro

# Create t2.micro instance using AMI-0ff8a91507f77f867
resource "aws_instance" "name_1" {
  ami           = "ami-0ff8a91507f77f867"
  instance_type = "t2.micro"
}

# output block, get EC2 Instance Public IP from vm

}

