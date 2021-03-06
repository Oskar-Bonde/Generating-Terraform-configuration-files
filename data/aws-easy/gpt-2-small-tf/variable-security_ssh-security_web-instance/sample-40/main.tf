terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block AWS
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create variable declaration for each resource
variable "name_0" {
  description = "AWS region to create resources in."
  default     = "us-east-1"
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

