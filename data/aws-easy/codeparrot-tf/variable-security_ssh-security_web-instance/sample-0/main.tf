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

# Create variable "name_0" with AMI reference
variable "name_0" {
  type = "map"
  default = {
    ap-northeast-1 = "ami-0ff8a91507f77f867"
    ap-southeast-1 = "ami-0a1e7c6b6"
    ap-southeast-2 = "ami-0a1e7c6d7"
    eu-central-1 = "ami-0d1c2007"
    eu-west-1 = "ami-0d1c2007"
    sa-east-1 = "ami-0d11a2007"
    us-east-1 = "ami-0d11a2007"
    us-west-1 = "ami-0d11a2007"
    us-west-2 = "ami-0d11a2007"
  }
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

