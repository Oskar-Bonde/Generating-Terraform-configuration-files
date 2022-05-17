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

# Provider blockvariable "aws_region" {
  description = "AWS region to launch servers."
  type        = "string"
}

# Resource block to Create VPC
}

# Resource block with VPC
}

