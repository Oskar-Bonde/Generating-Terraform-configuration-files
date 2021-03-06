# Terraform block with the AWS provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider block AWS with region us east
variable "name_0" {
  default = "us-east-1"
}

# Resource block with an EC2 instance with t2.micro instance type and ami-0ff8a91507f77f867

# Terraform configuration file
# Terraform block the providers AWS and time
# Terraform block with the AWS provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Time sleep resource block, Wait for 90 seconds after creating ec2 instance
# and collecting output
resource "null_resource" "name_1" {
  provisioner "local-exec" {
    command = "sleep 60"
  }
}

