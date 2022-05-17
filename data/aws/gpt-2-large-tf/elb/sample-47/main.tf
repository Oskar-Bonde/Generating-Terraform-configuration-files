# Terraform Block with the AWS provider
# Terraform Block with the AWS provider
# Terraform Block with the AWS provider
# Provider block with AWS in us-east-1 region and default profile
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Provider block with AWS in us-east-1 region
resource "aws_instance" "name_1" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Resource, create AWS ELB that listens for instance port 80 and lb port 80
resource "aws_instance" "name_2" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

