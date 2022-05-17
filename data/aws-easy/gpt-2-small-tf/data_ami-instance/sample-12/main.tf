provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider block with an EC2 instance
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# data AMI ID blockvariable "ami" {
#   type = "map"
# }

# Data Source block with an EC2 instance
data "aws_ami" "name_1" {
  most_recent = true
  filter {
    name   = "name"
    values = ["ec2demo-ami-0ff8a91507f77f867"]
  }
}

# Create AWS instance
}

