terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS block with region us east
variable "name_0" {
  default = "us-east-1"
}

# Create EC2 Instance with ami-0ff8a91507f77f867 and t2.micro

# Terraform configuration file
# Terraform Block with the AWS provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Output block, create public DNS URL from vm

output "name_1" {
  value = "${aws_instance.ec2demo.public_dns}"
}

