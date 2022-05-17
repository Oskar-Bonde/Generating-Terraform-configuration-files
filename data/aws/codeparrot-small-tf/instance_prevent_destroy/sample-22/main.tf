terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block AWS us east 1
variable "name_0" {
  description = "Use this block to create AWS instance with AWS us-east-1"
  default = {
    us-east-1 = "ami-0ff8a91507f77f867"
  }
}

# Create EC2 Instance ami-0915bcb5fa77e4892, instance type t2.micro and the lifecycle prevent destroy set true
resource "aws_instance" "name_1" {
  ami           = "ami-0915bcb5fa77e4892"
  instance_type = "t2.micro"
}

