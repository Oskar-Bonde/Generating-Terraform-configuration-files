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

# create a workspace ip group
resource "aws_network_acl" "name_1" {
  vpc_id                           = aws_vpc.main.id
  subnet_ids                         = aws_subnet.main.id
  security_groups                   = [aws_security_group.ec2demo_sg.id]
  key_name                          = aws_key_pair.main.key_name
  tags                              = var.tags
}

