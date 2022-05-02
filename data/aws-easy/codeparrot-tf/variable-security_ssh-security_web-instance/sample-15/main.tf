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

# Create variable "ami" with a random name
resource "random_id" "name_0" {
  byte_length = 16
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

