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

# create a default network acl, vpc acl id. As ingress, set protocal -1, rule number 100, cird block 0.0.0.0/0, from port 83 to port 0 and action allow
}
