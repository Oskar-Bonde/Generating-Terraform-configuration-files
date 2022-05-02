terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block AWS provider
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create variable "aws_region" {
#   default = "us-east-1"
# }


variable "name_0" {
  description = "The ID of the project in which to provision resources."
  type        = string
}

# variable block
}

# make variable
}

# create variable block
}

# Create Security Group
}

# Create Security Group
}

# Create EC2 Instance
}

