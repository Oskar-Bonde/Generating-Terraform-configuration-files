terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block: aws in us east 1
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# create vpc resource, use cidr block 10.1.0.0/16 and assign generated ipv6 cidr block 10.1.0.0/24
# create vpc resource, use cidr block 10.1.0.0/24.0.0/16
# create vpc resource, use cidr block 10.1.0.0/24.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/16.0.0/
}

# create an egress only internet gateway, use vpc id
}

