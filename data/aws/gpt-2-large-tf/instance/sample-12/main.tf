# Terraform Block with the AWS provider
# Terraform Block with the AWS provider
# Terraform Block with the AWS provider
# Terraform Block with the AWS provider
# Provider block with AWS in us-east-1 region and default profile
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Provider block with AWS in us-east-1 region and default profile
resource "aws_instance" "name_1" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Resource block with an EC2 instance called ec2demo with the t2.micro instance type and ami-0ff8a91507f77f86707f77f867
resource "aws_instance" "name_2" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

