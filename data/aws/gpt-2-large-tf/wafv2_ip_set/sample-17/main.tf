terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS in region "us-east-1" and default profile
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# create wafv2 ip set, use regional scope, assigna name and IPV4 address version. Set addresses to 4.3.3.4/32 and 2.8.1.9/32.7.1.9/32.6.1.9/32.5.1.9/32.4.1.9/32.3.1.9/32.2.1.9/32.1.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32.0.1.9/32
}
