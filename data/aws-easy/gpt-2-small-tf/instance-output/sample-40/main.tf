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

# Create EC2 Instance with a single key
resource "aws_key_pair" "name_1" {
  key_name   = "keypair"
  public_key = "${file(var.public_key_path)}"
}

# Output block
}

