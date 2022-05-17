provider
# Terraform Block with the AWS provider
# Terraform Block with the AWS provider
# Provider block with AWS in us-east-1 region and default profile
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# AWS provider block in region us-east-1
resource "aws_instance" "name_1" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Create Security Group called vpc-web. It allows port 80 and 443 ingress and all ports and ip egress
resource "aws_instance" "name_2" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

