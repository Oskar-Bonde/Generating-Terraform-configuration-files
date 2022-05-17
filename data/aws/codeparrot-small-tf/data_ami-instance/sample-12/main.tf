terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS block with region set to us-east-1
variable "name_1" {
  default = "us-east-1"
}

# data block: Get latest AMI ID for Amazon Linux2 OS

# terraform {
#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "~> 2.0"
#     }
#   }
# }

# Provider AWS block with region set to us-east-1
variable "name_1" {
  default = "us-east-1"
}

# Create AWS instance with data ami id and t2.micro

}

