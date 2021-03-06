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

# data AMI ID blockvariable "ami_id" {
#   type = "map"
#   default = {
#        us-east-1 = "ami-f9d8b9e1e8"
#        us-west-1 = "ami-f9d8b9e1e8"
#        eu-west-1 = "ami-f9d8b9e1e8"
#        sa-east-1 = "ami-f9d8b9e1e8"
#        us-west-1 = "ami-f9d8b9e1e8"
#        us-west-2 = "ami-f9d8b9e1e8"
#        us-west-3 = "ami-f9d8b9e1e8"
#        us-east-1 = "ami-f9d8b9e1e8"
#        eu-west-1 = "ami-f9d8b9e1e8"
#        sa-east-1 = "ami-f9d8b9e1e8"
#        us-west-1 = "ami-f9d8b9e1e8"
#        us-west-2 = "ami-f9d8b9e1e8"
#        us-east-1 = "ami-f9d8b9e1e8"
#        us-west-2 = "ami-f9d8b9e1e8"
#        us-west-1 = "ami-f9d8b9e1e8"
#        us-east-2 = "ami-f9d8b9e1e8"
#        us-west-1 = "ami-f9d8b9e1e8"
#        us-east-1 = "ami-f9d8b9e1e8"
#        us-west-2 = "ami-f9d8b9e1e8"
#        us-west-1 = "ami-f9d8b9e1e8"
#        us-east-2 = "ami-f9d8b9e1e8"
#        us-west-1 = "ami-f9d8b9e1e8"
#        us-east-1 = "ami-f9d8b9e1e8"
#        us-west-2 = "ami-f9d8b9e1e
}

# Create AWS instance
}

