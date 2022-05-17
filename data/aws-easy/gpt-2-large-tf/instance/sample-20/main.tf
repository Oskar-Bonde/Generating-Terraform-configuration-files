# Terraform Block with the AWS provider
# Terraform Block with the AWS provider
# Provider block with AWS
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Provider blockresource "aws_instance" "ec2demo-c" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Resource block with an EC2 instance
resource "aws_instance" "name_1" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

