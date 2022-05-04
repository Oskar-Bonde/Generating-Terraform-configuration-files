provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS region var.name_0
variable "name_0" {
  description = "AWS region to launch servers."
  default     = "us-east-1"
}

# Create Variable that is a map of strings. The default is that key Terraform maps to true and Environment key maps to dev
variable "name_1" {
  description = "Public key of SSH key pair to use for SSH access"
  default     = "~/.ssh/id_rsa.pub"
}
