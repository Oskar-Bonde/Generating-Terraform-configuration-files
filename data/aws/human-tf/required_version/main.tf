# Terraform block that has terraform version more than 1.1.0 and AWS version more than 3.0 and random version 3.0.1
terraform {
  required_version = ">= 1.1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.0"
    }
    random = {
      source = "hashicorp/random"
      version = "3.0.1"
    }    
  }
}