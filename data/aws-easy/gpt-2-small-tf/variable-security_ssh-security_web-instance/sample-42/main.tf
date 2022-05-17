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
# variable declaration for each resource
# variable declaration for each resource
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
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

