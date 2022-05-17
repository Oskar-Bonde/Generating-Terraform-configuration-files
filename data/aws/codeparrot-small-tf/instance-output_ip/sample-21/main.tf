terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS block with region us east and default profile
variable "name_0" {
  default = "us-east-1"
}

# Create EC2 Instance with ami-0ff8a91507f77f867 and t2.micro

# resource "aws_instance" "ec2demo" {
#   ami           = "ami-0ff8a91507f77f867"
#   instance_type = "t2.micro"
# }


output "name_1" {
  value = module.project-factory.project_id
}

# output block, get EC2 Instance Public IP from vm

}

