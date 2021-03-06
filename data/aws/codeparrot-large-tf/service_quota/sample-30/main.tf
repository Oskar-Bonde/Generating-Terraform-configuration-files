terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block: aws in us east 1 region and default profile
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# create a service quota resource. Use quota code "L-F678F1CE" and service code "vpc". Use value 7500 for production
resource "aws_service_quota" "name_0" {
  provider = "aws.prod"
  name     = "service-quota"
  resource   = "service"
  ingress {
    # Get the current value of the quota code
    limit = 7500
    value = 7500
  }
  # Set the quota code for the service
  ingress {
    # Set the quota code for the service
    limit = 7500
    value = 7500
    service = "vpc"
  }
  # Set the quota code for the service
  ingress {
    # Set the quota code for the service
    limit = 7500
    value = 7500
    service = "vpc"
  }
  # Set the quota code for the service
  ingress {
    # Set the quota code for the service
    limit = 7500
    value = 7500
    service = "vpc"
  }
  # Set the quota code for the service
  ingress {
    # Set the quota code for the service
    limit = 7500
    value = 7500
    service = "vpc"
  }
  # Set the quota code for the service
  ingress {
    # Set the quota code for the service
    limit = 7500
    value = 7500
    service = "vpc"
  }
  # Set the quota code for the service
  ingress {
    # Set the quota code for the service
    limit = 7500
    value = 7500
    service = "vpc"
  }
  # Set the quota code for the service
  ingress {
    # Set the quota code for the service
    limit = 7500
    value = 7500
    service = "vpc"
  }
  # Set the quota code for the service
  ingress {
    # Set the quota code for the service
    limit = 7500
    value = 7500
    service = "vpc"
  }
  # Set the quota code for the service
  ingress {
    # Set the quota code for the service
    limit = 7500
    value = 7500
    service = "vpc"
  }
  # Set the quota code for the service
  ingress {
    # Set the quota code for the service
    limit = 7500
    value = 7500
    service = "vpc"
  }
  # Set the quota code for the service
  ingress {
    # Set the quota code for the service
    limit = 7500
    value = 7500
    service = "vpc"
  }
  # Set the quota code for the service
  ingress {
    # Set the quota code for the service
    limit = 7500
    value = 7500
    service = "vpc"
  }
  # Set the quota code for the service
  ingress {
    # Set the quota code for the service
    limit = 7500
    value = 7500
    service = "vpc"
  }
  # Set the quota code for the service
  ingress {
    # Set the quota code for the service
    limit = 7500
    value = 7500
    service = "vpc"
  }
  # Set the quota code for the service
  ingress {
    # Set the quota code for the service
    limit = 7500
    value = 7500
    service = "vpc"
  }
  # Set the quota code for the service
  ingress {
    # Set the quota code for the service
    limit = 7500
    value = 7500
    service = "vpc"
  }
  # Set the quota code for the service
  ingress {
    # Set the quota code for the service
    limit = 7500
   
}

