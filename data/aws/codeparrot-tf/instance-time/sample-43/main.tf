to create the instance
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Provider block AWS with region us eastvariable
provider "aws" {
  alias  = "us-east-1"
  region = "us-east-1"
}

# Resource block with an EC2 instance with t2.micro instance type and ami-0ff8a91507f77f867
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Time sleep resource block, Wait for 90 seconds after creating ec2 instance
resource "aws_spot_instance_request" "name_1" {
  spot_price = "0.1"
  wait_for_fulfillment = true
  associate_public_ip_address = true
  ami = "ami-0ff8a91507f77f867"
}

