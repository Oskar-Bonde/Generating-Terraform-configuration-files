terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block AWS in us east 1 region and default profile
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create EC2 Instance called web with ami-0915bcb5fa77e4892 and t2.micro, lifecycle create before destroy true
resource "aws_instance" "name_0" {
  ami           = "ami-0915bcb5fa77e4892" 
  instance_type = "t2.micro"
  key_name      = "web"
  subnet_id     = "subnet-04a0e0a"
  security_groups = ["sg-96274af3"]
  associate_public_ip_address = true
  key_name      = "web-key"

  root_block_device {
    volume_type = "gp2"
    volume_size = "30"
  }

  tags {
    Name = "web"
  }
}

