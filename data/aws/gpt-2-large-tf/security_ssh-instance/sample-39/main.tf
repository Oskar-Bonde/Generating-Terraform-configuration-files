# Terraform Block with the AWS provider
# Terraform Block with the AWS provider
# Terraform Block with the AWS provider
# Terraform Block with the AWS provider
# Terraform Block with the AWS provider
# Provider block with AWS in us-east-1 region and default profile
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Provider AWS in region "us-east-1"
resource "aws_instance" "name_1" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Create Security Group that allows port 22 inbound and all outbound ports
resource "aws_instance" "name_2" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Create EC2 Instance with ami-0915bcb5fa77e4892 and instance type t3.micro. Use vpc ssh security group id
resource "aws_instance" "name_3" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro
}

