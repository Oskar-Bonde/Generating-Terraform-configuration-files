terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block: aws in us east 1 region
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create a AWS VPC resource with private network 10.0.0.0/16variable
resource "aws_vpc" "name_0" {
  cidr_block                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
}

# Create AWS subnets resource in private network 10.0.1.0/24 and map public ip on launch set true. Use VPC id
}

# create a nat gateway, use private connectivity type and subnet id
}

