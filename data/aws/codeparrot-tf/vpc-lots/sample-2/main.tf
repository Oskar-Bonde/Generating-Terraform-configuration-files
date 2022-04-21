provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block, region set to us east 1
provider "aws" {
  region = "us-east-1"
}

# Resource, an aws security group with the following ingress ports: 80, 443, 8080, 8081, 7080, 7081. All use cidr block 0.0.0.0/0#
# To connect, add your own security group with the following ingress ports:
# - SSH    on port  22 from your AWS security group
# - HTTP   on port  80 from your AWS security group
# - HTTP   on port  80 to all other SGs
# - HTTP   on port  80 to all other SGs
# - HTTP   on port  80 to all other SGs
# - HTTP   on port  80 to all other SGs
# - HTTP   on port  80 to all other SGs
# - HTTP   on port  80 to all other SGs
# - HTTP   on port  80 to all other SGs
# - HTTP   on port  80 to all other SGs
# - HTTP   on port  80 to all other SGs
# - HTTP   on port  80 to all other SGs
# - HTTP   on port  80 to all other SGs
# - HTTP   on port  80 to all other SGs
# - HTTP   on port  80 to all other SGs
# - HTTP   on port  80 to all other SGs
# - HTTP   on port  80 to all other SGs
# - HTTP   on port  80 to all other SGs
# - HTTP   on port  80 to all other SGs
# - HTTP   on port  80 to all other SGs
# - HTTP   on port  80 to all other SGs
# - HTTP   on port  80 to all other SGs
# - HTTP   on port  80 to all other SGs
# - HTTP   on port  80 to all other SGs
# - HTTP   on port  80 to all other SGs
# - HTTP   on port  80 to all other SGs
# - HTTP   on port  80 to all other SGs
# - HTTP   on port  80 to all other SGs
# - HTTP   on port  80 to all other SGs
# - HTTP   on port  80 to all other SGs
# - HTTP   on port  80 to all other SGs
# - HTTP   on port  80 to all other SGs
# - HTTP   on port  80 to all other SGs
# - HTTP   on port  80 to all other SGs
# - HTTP   on port  80 to all other SGs
# - HTTP   on port  80 to all other SGs
# - HTTP   on port  80 to all other SGs
# - HTTP   on port  80 to all other SGs
# - HTTP   on port  80 to all other SGs
# - HTTP   on port  80 to all other SGs
# - HTTP   on port  80 to all other SGs
# - HTTP   on port  80 to all other SGs
# - HTTP   on port  80 to all other SGs
# - HTTP   on port  80 to all other SGs
# - HTTP   on port  80 to all other SGs
# - HTTP   on port  80 to all other SGs
# - HTTP   on port  80 to all other SGs
# - HTTP   on port  80 to all other SGs
# - HTTP   on port  80 to all other SGs
# - HTTP   on port  80 to all other SGs
# - HTTP   on port  80 to all other SG
}

